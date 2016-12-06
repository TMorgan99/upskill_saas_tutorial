class MembershipPlan < ActiveRecord::Base
  has_many :users
  
end
