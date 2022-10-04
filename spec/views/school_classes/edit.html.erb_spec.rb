require "rails_helper"

RSpec.describe("school_classes/edit", type: :view) do
  before(:each) do
    @school_class = assign(:school_class, SchoolClass.create!(
      name: "MyString",
    ))
  end

  it "renders the edit school_class form" do
    render

    assert_select "form[action=?][method=?]", school_class_path(@school_class), "post" do
      assert_select "input[name=?]", "school_class[name]"
    end
  end
end
