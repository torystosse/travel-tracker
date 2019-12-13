require "rails_helper"

RSpec.describe BucketlistCountriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bucketlist_countries").to route_to("bucketlist_countries#index")
    end


    it "routes to #show" do
      expect(:get => "/bucketlist_countries/1").to route_to("bucketlist_countries#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bucketlist_countries").to route_to("bucketlist_countries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bucketlist_countries/1").to route_to("bucketlist_countries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bucketlist_countries/1").to route_to("bucketlist_countries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bucketlist_countries/1").to route_to("bucketlist_countries#destroy", :id => "1")
    end

  end
end
