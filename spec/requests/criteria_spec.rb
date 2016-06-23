require 'rails_helper'

RSpec.describe "Criteria", type: :request do
  describe "GET /criteria" do
    it "works! (now write some real specs)" do
      get criteria_path
      expect(response).to have_http_status(200)
    end
  end
end
