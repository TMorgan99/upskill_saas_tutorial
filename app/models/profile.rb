class Profile < ActiveRecord::Base
  belongs_to :user

  has_attached_file :avatar, 
    default_url: '/images/:style/missing.png',
    styles: { medium: '300x300>', thumb: '100x100>' } 
    
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
