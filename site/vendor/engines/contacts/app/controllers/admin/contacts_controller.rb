module Admin
  class ContactsController < Admin::BaseController
    
    def index
      @contacts = Contact.all
    end
    
    def destroy
      contact = Contact.find(params[:id])
      if contact.destroy
        flash[:notice] = "Contact message destroyed."
      else
        flash[:error] = "Error destroying contact message."
      end
      redirect_to admin_contacts_url
    end
    
    def self.sortable?
      false
    end

  end
end
