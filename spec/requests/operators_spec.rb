require 'rails_helper'

RSpec.describe "Operators", type: :request do
  describe "GET /operators" do
    it "works! (now write some real specs)" do
      get operators_path
      expect(response).to have_http_status(200)
    end
  end
end
