class ContactMailer < ActionMailer::Base
  default to: 'TMorgan99@GMail.com'
  
  def contact_email( name, email, comments )
    @name = name
    @email = email
    @body = comments
    
    mail( from: email, subject: 'DEVMATCH: Contact Form Message')
  end
  
end
