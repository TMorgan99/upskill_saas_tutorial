class ProfilesController < ApplicationController

# profiles#new
  def new
    @profile = Profile.new
  end
  
  def create
    # what if somebody hacks the URL?
    # why not save to 'current_user'
    @user = User.find params[ :user_id ]
    @profile = @user.build_profile profile_params
    if @profile.save
      flash[ :success ] = "Profile updated!"
      # redirect_to root_path
      redirect_to user_path( params[:user_id] )

    else
      # ? redirect and flash.
      render action: :new
    end
  end
  
  
  private
  def profile_params
    params.require(:profile).permit(
      :first_name, :last_name, :job_title, :phone_number, :contact_email, :description,
      :avatar
      )
  end
end
