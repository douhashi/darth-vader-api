require "rails_helper"

RSpec.describe Api::ItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/items").to route_to("api/items#index")
    end

    it "routes to #new" do
      expect(:get => "/api/items/new").to route_to("api/items#new")
    end

    it "routes to #show" do
      expect(:get => "/api/items/1").to route_to("api/items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/api/items/1/edit").to route_to("api/items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/api/items").to route_to("api/items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/api/items/1").to route_to("api/items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/api/items/1").to route_to("api/items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/items/1").to route_to("api/items#destroy", :id => "1")
    end

  end
end
