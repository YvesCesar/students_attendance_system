require "rails_helper"

RSpec.describe("responsibles/edit", type: :view) do
  before(:each) do
    @responsible = assign(:responsible, Responsible.create!(
      name: "MyString",
      email: "MyString@naoexiste.com"
    ))
  end

  it "renders the edit responsible form" do
    render

    assert_select "form[action=?][method=?]", responsible_path(@responsible), "post" do
      assert_select "input[name=?]", "responsible[name]"

      assert_select "input[name=?]", "responsible[email]"
    end
  end
end
