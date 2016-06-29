require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

	let(:url) { "/contacts" }
	
	it "testando api de segmentação" do

		post "#{url}/get_segmented", {:criterium => 14}

		segment_json = JSON.parse last_response.body

		print segment_json

	end
end
