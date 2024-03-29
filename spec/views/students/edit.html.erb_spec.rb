require "rails_helper"

RSpec.describe("students/edit", type: :view) do
  before(:each) do
    @student = assign(:student, Student.create!(
      name: "MyString",
      image: fixture_file_upload(Rails.root.join("spec/assets", "class_model.png"), "image/png"),
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do
      assert_select "input[name=?]", "student[name]"
    end
  end
end
