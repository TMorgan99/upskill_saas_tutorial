class ContactMailer < ActionMailer::Base
  default to: 'TMorgan99@GMail.com'.downcase!
  
  def contact_email( contact )
    @contact = contact

    mail( from: contact.email, subject: 'DEVMATCH: Contact Form Message')
  end
  
end
