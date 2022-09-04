require "rails_helper"

RSpec.describe("students/show", type: :view) do
  before(:each) do
    @student = assign(:student, Student.create!(
      name: "Name",
      image: fixture_file_upload(Rails.root.join("spec/assets", "class_model.png"), "image/png")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to(match(/Name/))
  end
end
