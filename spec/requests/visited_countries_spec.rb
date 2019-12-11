require 'rails_helper'

RSpec.describe "VisitedCountries", type: :request do
  describe "GET /visited_countries" do
    it "works! (now write some real specs)" do
      get visited_countries_path
      expect(response).to have_http_status(200)
    end
  end
end
