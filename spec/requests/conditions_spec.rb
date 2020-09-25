require 'rails_helper'

RSpec.describe "Conditions", type: :request do
  describe "GET /conditions" do
    it "works! (now write some real specs)" do
      get conditions_path
      expect(response).to have_http_status(200)
    end
  end
end
