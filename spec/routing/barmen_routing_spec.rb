require "rails_helper"

RSpec.describe BarmenController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/barmen").to route_to("barmen#index")
    end

    it "routes to #new" do
      expect(get: "/barmen/new").to route_to("barmen#new")
    end

    it "routes to #show" do
      expect(get: "/barmen/1").to route_to("barmen#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/barmen/1/edit").to route_to("barmen#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/barmen").to route_to("barmen#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/barmen/1").to route_to("barmen#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/barmen/1").to route_to("barmen#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/barmen/1").to route_to("barmen#destroy", id: "1")
    end
  end
end
