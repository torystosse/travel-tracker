require 'rails_helper'

RSpec.describe "BucketlistCountries", type: :request do
  describe "GET /bucketlist_countries" do
    it "works! (now write some real specs)" do
      get bucketlist_countries_path
      expect(response).to have_http_status(200)
    end
  end
end
