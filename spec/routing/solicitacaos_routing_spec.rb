require "rails_helper"

RSpec.describe SolicitacaosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/solicitacaos").to route_to("solicitacaos#index")
    end

    it "routes to #new" do
      expect(:get => "/solicitacaos/new").to route_to("solicitacaos#new")
    end

    it "routes to #show" do
      expect(:get => "/solicitacaos/1").to route_to("solicitacaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/solicitacaos/1/edit").to route_to("solicitacaos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/solicitacaos").to route_to("solicitacaos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/solicitacaos/1").to route_to("solicitacaos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/solicitacaos/1").to route_to("solicitacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/solicitacaos/1").to route_to("solicitacaos#destroy", :id => "1")
    end

  end
end
