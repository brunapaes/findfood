require "rails_helper"

RSpec.describe ComidasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/comidas").to route_to("comidas#index")
    end

    it "routes to #new" do
      expect(:get => "/comidas/new").to route_to("comidas#new")
    end

    it "routes to #show" do
      expect(:get => "/comidas/1").to route_to("comidas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/comidas/1/edit").to route_to("comidas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/comidas").to route_to("comidas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/comidas/1").to route_to("comidas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/comidas/1").to route_to("comidas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/comidas/1").to route_to("comidas#destroy", :id => "1")
    end

  end
end
