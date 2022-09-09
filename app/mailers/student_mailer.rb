class StudentMailer < ApplicationMailer
  def notifies_responsible(student, school_class, frequency_register)
    @student = student
    @school_class = school_class
    @frequency_register = frequency_register
    mail(to: @student.responsible.email, subject: "Frequência de Aluno")
  end
end
