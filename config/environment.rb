# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

herokuapp = 'boiling-beyond-48073'

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => "#{herokuapp}.herokuapp.com",
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp
