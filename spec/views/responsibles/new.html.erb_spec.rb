require "rails_helper"

RSpec.describe("responsibles/new", type: :view) do
  before(:each) do
    assign(:responsible, Responsible.new(
      name: "MyString",
      email: "MyString",
    ))
  end

  it "renders new responsible form" do
    render

    assert_select "form[action=?][method=?]", responsibles_path, "post" do
      assert_select "input[name=?]", "responsible[name]"

      assert_select "input[name=?]", "responsible[email]"
    end
  end
end
