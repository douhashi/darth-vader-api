require 'rails_helper'

RSpec.describe "Api::Items", type: :request do
  describe "GET /api_items" do
    it "works! (now write some real specs)" do
      get api_items_path
      expect(response).to have_http_status(200)
    end
  end
end
