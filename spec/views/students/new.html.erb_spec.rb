require "rails_helper"

RSpec.describe("students/new", type: :view) do
  before(:each) do
    assign(:student, Student.new(
      name: "MyString",
      image: fixture_file_upload(Rails.root.join("spec/assets", "class_model.png"), "image/png")
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do
      assert_select "input[name=?]", "student[name]"
    end
  end
end
