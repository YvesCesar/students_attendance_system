require "rails_helper"

RSpec.describe("students/index", type: :view) do
  before(:each) do
    @student = Student.create!(
      name: "Yvinho",
      school_class: SchoolClass.create(name: "3 ano 3"),
      responsible: Responsible.create(name: "Yves", email: "yves@naoexiste.com"),
      image: fixture_file_upload(Rails.root.join("spec/assets", "class_model.png"), "image/png")
    )
    @second_student = Student.create!(
      name: "Wilsinho",
      school_class: SchoolClass.create(name: "3 ano 3"),
      responsible: Responsible.create(name: "Wilson", email: "wilson@naoexiste.com"),
      image: fixture_file_upload(Rails.root.join("spec/assets", "class_model.png"), "image/png")
    )
    assign(:students, [ @student, @second_student ])
  end

  it "renders a list of students" do
    render
    expect(rendered).to(have_text(@student.name))
    expect(rendered).to(have_text(@second_student.name))
  end
end
