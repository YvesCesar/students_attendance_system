require "rails_helper"

RSpec.describe("responsibles/index", type: :view) do
  before(:each) do
    @responsible = Responsible.create!(
      name: "Yves",
      email: "Email@naoexiste.com",
    )
    @second_responsible = Responsible.create!(
      name: "César",
      email: "Email@naoexiste.com",
    )

    assign(:responsibles, [ @responsible, @second_responsible ])
  end

  it "renders a list of responsibles" do
    render
    expect(rendered).to(have_text(@responsible.name))
    expect(rendered).to(have_text(@second_responsible.name))
  end
end
