class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  belongs_to :membership_plan
  has_one :profile
  
  attr_accessor :stripe_card_token

  def save_with_subscription
    if valid?
      customer = Stripe::Customer.create(description: email, plan: membership_plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  end

end
