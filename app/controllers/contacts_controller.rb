class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new( contact_params )
    if @contact.save
      ContactMailer.contact_email( @contact ).deliver
      flash[ :success ] = 'Message OK'
      redirect_to contact_us_path
      
    else
      flash[ :danger ] = @contact.errors.full_messages.join ', '
      redirect_to contact_us_path
    end
      
  end
  
  
  private
    def contact_params
      params.require(:contact).permit( :name, :email, :comments )
    end
    
end
