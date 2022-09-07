class FrequencyRegistersController < ApplicationController
  def new
    @school_class = SchoolClass.find(params[:school_class_id])
    @frequency_register = FrequencyRegister.new
    script_data = ""
    @school_class.students.each do |student|
        script_data += student.id.to_s + "," + student.name + "," + url_for(student.image) + ";"
    end
    @face_recognition_exec = `python3 python/face_recognition_example.py #{script_data.to_s}`
  end

  def create
    @school_class = SchoolClass.find(params[:school_class_id])
    @frequency_register = @school_class.frequency_registers.create(frequency_register_params)
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
end
