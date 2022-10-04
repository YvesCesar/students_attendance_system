require "rails_helper"

RSpec.describe("school_classes/index", type: :view) do
  before(:each) do
    @schoolClass = SchoolClass.create!(
      name: "3 ano 3",
    )
    @second_schoolClass = SchoolClass.create!(
      name: "4 ano",
    )
    assign(:school_classes, [ @schoolClass, @second_schoolClass ])
  end

  it "renders a list of school_classes" do
    render
    expect(rendered).to(have_text(@schoolClass.name))
    expect(rendered).to(have_text(@second_schoolClass.name))
  end
end
