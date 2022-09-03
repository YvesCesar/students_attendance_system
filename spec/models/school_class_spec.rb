require "rails_helper"

RSpec.describe(SchoolClass, type: :model) do
  describe "creating" do
    context "an invalid school class" do
      it "does not create a school class" do
        expect {
          SchoolClass.create(name: "")
        }.to(change(SchoolClass, :count).by(0))
      end
    end

    context "a valid school class" do
      it "creates a school class" do
        expect {
          SchoolClass.create(name: "CC3A34")
        }.to(change(SchoolClass, :count).by(1))
      end
    end
  end
end
