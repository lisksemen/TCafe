require "rails_helper"

RSpec.describe CashboxesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cashboxes").to route_to("cashboxes#index")
    end

    it "routes to #new" do
      expect(get: "/cashboxes/new").to route_to("cashboxes#new")
    end

    it "routes to #show" do
      expect(get: "/cashboxes/1").to route_to("cashboxes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/cashboxes/1/edit").to route_to("cashboxes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cashboxes").to route_to("cashboxes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cashboxes/1").to route_to("cashboxes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cashboxes/1").to route_to("cashboxes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cashboxes/1").to route_to("cashboxes#destroy", id: "1")
    end
  end
end
