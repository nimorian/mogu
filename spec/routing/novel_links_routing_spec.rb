require "spec_helper"

describe NovelLinksController do
  describe "routing" do

    it "routes to #index" do
      get("/novel_links").should route_to("novel_links#index")
    end

    it "routes to #new" do
      get("/novel_links/new").should route_to("novel_links#new")
    end

    it "routes to #show" do
      get("/novel_links/1").should route_to("novel_links#show", :id => "1")
    end

    it "routes to #edit" do
      get("/novel_links/1/edit").should route_to("novel_links#edit", :id => "1")
    end

    it "routes to #create" do
      post("/novel_links").should route_to("novel_links#create")
    end

    it "routes to #update" do
      put("/novel_links/1").should route_to("novel_links#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/novel_links/1").should route_to("novel_links#destroy", :id => "1")
    end

  end
end
