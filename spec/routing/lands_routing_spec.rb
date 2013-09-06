require "spec_helper"

describe LandsController do
  describe "routing" do

    it "routes to #index" do
      get("/lands").should route_to("lands#index")
    end

    it "routes to #new" do
      get("/lands/new").should route_to("lands#new")
    end

    it "routes to #show" do
      get("/lands/1").should route_to("lands#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lands/1/edit").should route_to("lands#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lands").should route_to("lands#create")
    end

    it "routes to #update" do
      put("/lands/1").should route_to("lands#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lands/1").should route_to("lands#destroy", :id => "1")
    end

  end
end
