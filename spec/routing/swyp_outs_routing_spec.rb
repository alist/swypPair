require "spec_helper"

describe SwypOutsController do
  describe "routing" do

    it "routes to #index" do
      get("/swyp_outs").should route_to("swyp_outs#index")
    end

    it "routes to #new" do
      get("/swyp_outs/new").should route_to("swyp_outs#new")
    end

    it "routes to #show" do
      get("/swyp_outs/1").should route_to("swyp_outs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/swyp_outs/1/edit").should route_to("swyp_outs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/swyp_outs").should route_to("swyp_outs#create")
    end

    it "routes to #update" do
      put("/swyp_outs/1").should route_to("swyp_outs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/swyp_outs/1").should route_to("swyp_outs#destroy", :id => "1")
    end

  end
end
