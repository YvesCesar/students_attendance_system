require "rails_helper"

RSpec.describe(ResponsiblesController, type: :routing) do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/responsibles").to(route_to("responsibles#index"))
    end

    it "routes to #new" do
      expect(get: "/responsibles/new").to(route_to("responsibles#new"))
    end

    it "routes to #show" do
      expect(get: "/responsibles/1").to(route_to("responsibles#show", id: "1"))
    end

    it "routes to #edit" do
      expect(get: "/responsibles/1/edit").to(route_to("responsibles#edit", id: "1"))
    end


    it "routes to #create" do
      expect(post: "/responsibles").to(route_to("responsibles#create"))
    end

    it "routes to #update via PUT" do
      expect(put: "/responsibles/1").to(route_to("responsibles#update", id: "1"))
    end

    it "routes to #update via PATCH" do
      expect(patch: "/responsibles/1").to(route_to("responsibles#update", id: "1"))
    end

    it "routes to #destroy" do
      expect(delete: "/responsibles/1").to(route_to("responsibles#destroy", id: "1"))
    end
  end
end
