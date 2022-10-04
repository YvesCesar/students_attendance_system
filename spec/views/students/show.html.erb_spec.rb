require "rails_helper"

RSpec.describe("students/show", type: :view) do
  before(:each) do
    @student = assign(:student, Student.create!(
      name: "Name",
      school_class: SchoolClass.create(name: "3 ano 3"),
      responsible: Responsible.create(name: "Yves", email: "yves@naoexiste.com"),
      image: fixture_file_upload(Rails.root.join("spec/assets", "class_model.png"), "image/png"),
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to(match(/Name/))
    expect(rendered).to(match(/Yves/))
    expect(rendered).to(match(/3 ano 3/))
  end
end
