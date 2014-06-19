class ContactsController < ApplicationController

  def index
    @contact = Contact.new
  end
  
  def demo
    @contact = Contact.new
  end
  
  def thanks
  end
  
  def submit
    @contact = Contact.new
    @contact.content_fields = params[:contact]
    
    if verify_recaptcha(:model => @contact, :message => "CAPTCHA failed.") && @contact.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to contact_thankyou_url
    else
      render params[:contact][:is_demo].present? ? :demo : :index
    end
  end

end
