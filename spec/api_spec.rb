require 'spec_helper'
require 'rails_helper'
require 'support/api/helper'

describe '/api/v1/contacts', :type => :api do

	let(:url) { "/api/v1/contacts" }
  	
	it "criando um contato" do
		# método HTTP sobre a URL especificada
		post "#{url}.json", :contact => {
			:name => "Eu",
			:email => "eu@email.com",
			:age => 21,
			:uf => "SP",
			:job => "Analista de TI"
		}
		
		contact_json = JSON.parse last_response.body 
		
		# Id deve vir populado 
		contact_json["id"].should be 
		last_response.status.should eql(201)
	end
	
	it "editando um contato" do
		contact_criado = Contact.create(:name => "Eu", :email => "eu@email.com", :age => 21, :uf => "SP", :job => "Analista de TI")
		
		# método HTTP sobre a URL especificada
		put "#{url}/#{contact_criado.id}.json",  :contact => {
			:name => "ET",
			:email => "et@email.com" 
		}
		
		expect(204).to eq(last_response.status)

	end
	
end