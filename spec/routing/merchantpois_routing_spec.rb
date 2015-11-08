require "rails_helper"

RSpec.describe MerchantpoisController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/merchantpois").to route_to("merchantpois#index")
    end

    it "routes to #new" do
      expect(:get => "/merchantpois/new").to route_to("merchantpois#new")
    end

    it "routes to #show" do
      expect(:get => "/merchantpois/1").to route_to("merchantpois#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/merchantpois/1/edit").to route_to("merchantpois#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/merchantpois").to route_to("merchantpois#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/merchantpois/1").to route_to("merchantpois#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/merchantpois/1").to route_to("merchantpois#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/merchantpois/1").to route_to("merchantpois#destroy", :id => "1")
    end

  end
end
