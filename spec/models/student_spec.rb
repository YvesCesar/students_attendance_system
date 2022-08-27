require "rails_helper"

RSpec.describe(Student, type: :model) do
  describe "creating" do
    context "an invalid student" do
      it "does not create a student" do
        expect {
          Student.create(name: "")
        }.to(change(Student, :count).by(0))
      end
    end

    context "a valid student" do
      it "creates a student" do
        expect {
          Student.create(name: "Yves")
        }.to(change(Student, :count).by(1))
      end
    end
  end
end
