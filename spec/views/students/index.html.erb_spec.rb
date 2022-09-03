require "rails_helper"

RSpec.describe("students/index", type: :view) do
  before(:each) do
    @student = Student.create!(
      name: "Yvinho"
    )
    @second_student = Student.create!(
      name: "Wilsinho"
    )
    assign(:students, [ @student, @second_student ])
  end

  it "renders a list of students" do
    render
    expect(rendered).to(have_text(@student.name))
    expect(rendered).to(have_text(@second_student.name))
  end
end
