class Users::RegistrationsController < Devise::RegistrationsController
  before_action :select_plan, only: :new

  def create
    super do |resource|
      if params[:plan]
        resource.membership_plan_id = params[:plan]
        if resource.membership_plan_id == 2
          resource.save_with_subscription
        else
          resource.save
        end
      end
    end
  end

# protect against bogus query string.
private
  def select_plan
    unless (params[:plan] == '1' || params[:plan] == '2')
      flash[:notice] = "Please select a membership plan to sign up."
      redirect_to root_url
    end
  end

end
