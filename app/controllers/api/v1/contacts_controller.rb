class Api::V1::ContactsController < Api::V1::BaseController
	
	def index
		contacts = Contact.all
		render json: contacts
	end

	def create
		contact = Contact.create(params[:contact])
		if contact.valid?
			respond_with(contact, :location => api_v1_contact_path(contact))
		else
			respond_with(contact)
		end
	end
  
	def update
		contact = Contact.update(params[:id],params[:contact])
		if contact.valid?
			respond_with(contact, :location => api_v1_contact_path(contact))
		else
			respond_with(contact)
		end
	end

	def show
		contact = Contact.find_by_id(params[:id])
		render json: contact
	end

	def get_segmented
		
	end


end