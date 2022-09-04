require "rails_helper"

RSpec.describe(Student, type: :model) do
  describe "creating" do
    context "an invalid student" do
      it "does not create a student" do
        expect {
          Student.create(name: "", school_class: SchoolClass.create(name: "3 ano 3"),
            responsible: Responsible.create(name: "Yves", email: "yves@naoexiste.com"), image: fixture_file_upload(Rails.root.join("spec/assets", "class_model.png"), "image/png"))
        }.to(change(Student, :count).by(0))
      end
    end

    context "a valid student" do
      it "creates a student" do
        expect {
          Student.create(name: "Yvinho", school_class: SchoolClass.create(name: "3 ano 3"),
            responsible: Responsible.create(name: "Yves", email: "yves@naoexiste.com"), image: fixture_file_upload(Rails.root.join("spec/assets", "class_model.png"), "image/png"))
        }.to(change(Student, :count).by(1))
      end
    end
  end
end
