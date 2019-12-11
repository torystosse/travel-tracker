require "rails_helper"

RSpec.describe VisitedCountriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/visited_countries").to route_to("visited_countries#index")
    end


    it "routes to #show" do
      expect(:get => "/visited_countries/1").to route_to("visited_countries#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/visited_countries").to route_to("visited_countries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/visited_countries/1").to route_to("visited_countries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/visited_countries/1").to route_to("visited_countries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/visited_countries/1").to route_to("visited_countries#destroy", :id => "1")
    end

  end
end
