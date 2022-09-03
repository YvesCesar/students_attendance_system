require "rails_helper"

RSpec.describe(Responsible, type: :model) do
  describe "creating" do
    context "an invalid responsible" do
      it "does not create a responsible" do
        expect {
          Responsible.create(name: "Yves", email: "$$%%&")
        }.to(change(Responsible, :count).by(0))
      end
    end

    context "a valid responsible" do
      it "creates a responsible" do
        expect {
          Responsible.create(name: "Yves", email: "yves@naoexiste.com")
        }.to(change(Responsible, :count).by(1))
      end
    end
  end
end
