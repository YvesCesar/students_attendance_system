class FrequencyRegistersController < ApplicationController
  def new
    @school_class = SchoolClass.find(params[:school_class_id])
    @frequency_register = FrequencyRegister.new
    @students_id = execute_face_recognition(@school_class)
    @students_registered = Student.where(id: @students_id)
  end

  def create
    @school_class = SchoolClass.find(params[:school_class_id])
    @frequency_register = @school_class.frequency_registers.create(frequency_register_params)
    @students_registered = register_params
    @students_registered.each do |student_data|
      student_id = student_data[1].split(" ")
      student_id.each do |id|
        if !id.empty? && id != "\n"
          student = Student.find(id)
          @register = Register.create(frequency_register: @frequency_register, student: student)
          StudentMailer.notifies_responsible(student, @school_class, @frequency_register).deliver_now!
        end
      end
    end
    redirect_to(school_class_path(@school_class))
  end

  def destroy
    @school_class = SchoolClass.find(params[:school_class_id])
    @frequency_register = @school_class.frequency_registers.find(params[:id])
    @frequency_register.destroy
    redirect_to(school_class_path(@school_class))
  end

    private
      def frequency_register_params
        params.require(:frequency_register).permit(:date_field)
      end

      def register_params
        params.require(:frequency_register).permit(:students_id)
      end

      def get_students_data_by_school_class(school_class)
        school_class.students.map { |student|
 "#{student.id},#{student.name},#{url_for(student.image)}" }.join(";")
      end

      def execute_face_recognition(school_class)
        script_data = get_students_data_by_school_class(@school_class)
        `python3 python/students_face_recognition.py "#{script_data}"`.split(",").reject { |id|
 id.empty? || id == "\n" }
      end
end
