require "rails_helper"

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe("/responsibles", type: :request) do
  # Responsible. As you add validations to Responsible, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      name: "Yves",
      email: "yves@naoexiste.com",
    }
  }

  let(:invalid_attributes) {
    {
      name: "Yves",
      email: "$$$",
    }
  }

  describe "GET /index" do
    it "renders a successful response" do
      Responsible.create!(valid_attributes)
      get responsibles_url
      expect(response).to(be_successful)
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      responsible = Responsible.create!(valid_attributes)
      get responsible_url(responsible)
      expect(response).to(be_successful)
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_responsible_url
      expect(response).to(be_successful)
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      responsible = Responsible.create!(valid_attributes)
      get edit_responsible_url(responsible)
      expect(response).to(be_successful)
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Responsible" do
        expect {
          post(responsibles_url, params: { responsible: valid_attributes })
        }.to(change(Responsible, :count).by(1))
      end

      it "redirects to the created responsible" do
        post responsibles_url, params: { responsible: valid_attributes }
        expect(response).to(redirect_to(responsible_url(Responsible.last)))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Responsible" do
        expect {
          post(responsibles_url, params: { responsible: invalid_attributes })
        }.to(change(Responsible, :count).by(0))
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post responsibles_url, params: { responsible: invalid_attributes }
        expect(response).to(have_http_status(:unprocessable_entity))
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {
          name: "Laís",
        }
      }

      it "updates the requested responsible" do
        responsible = Responsible.create!(valid_attributes)
        patch responsible_url(responsible), params: { responsible: new_attributes }
        responsible.reload
        expect(responsible.name).to(eq("Laís"))
      end

      it "redirects to the responsible" do
        responsible = Responsible.create!(valid_attributes)
        patch responsible_url(responsible), params: { responsible: new_attributes }
        responsible.reload
        expect(response).to(redirect_to(responsible_url(responsible)))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        responsible = Responsible.create!(valid_attributes)
        patch responsible_url(responsible), params: { responsible: invalid_attributes }
        expect(response).to(have_http_status(:unprocessable_entity))
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested responsible" do
      responsible = Responsible.create!(valid_attributes)
      expect {
        delete(responsible_url(responsible))
      }.to(change(Responsible, :count).by(-1))
    end

    it "redirects to the responsibles list" do
      responsible = Responsible.create!(valid_attributes)
      delete responsible_url(responsible)
      expect(response).to(redirect_to(responsibles_url))
    end
  end
end
