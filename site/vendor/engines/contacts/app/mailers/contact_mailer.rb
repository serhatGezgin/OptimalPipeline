class ContactMailer < ActionMailer::Base
  default :from => "websitecontact@optimalpipeline.com"
  
  def contact_mail(contact)
    @contact = contact
    deliver_to = RefinerySetting.find_or_set(:contact_form_deliver_to, "pcoyle@optimalpipeline.com")
    mail(:to => deliver_to, :subject => "Web Site Contact")
  end
  
end
