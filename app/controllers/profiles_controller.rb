class ProfilesController < ApplicationController

# must be authentic, and current user for these actions
  before_action :authenticate_user!
  before_action :only_current_user!
  
  
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
      redirect_to user_path( id: params[:user_id] )

    else
      # ? redirect and flash.
      render action: :new
    end
  end
  
  def edit
    @user = User.find params[ :user_id ]
    @profile = @user.profile
  end
  
# PATCH/PUT
  def update
    @user = User.find params[ :user_id ]
    @profile = @user.profile
    if @profile.update_attributes( profile_params )
      flash[ :success ] = 'Profile Updated!'
      redirect_to user_path( id: current_user )
    else
      # flash[ :error ]
      render action: :edit      
    end
    
  end
  
  private
  def profile_params
    params.require(:profile).permit(
      :first_name, :last_name, :job_title, :phone_number, :contact_email, :description,
      :avatar
      )
  end
  
  def only_current_user!
    @user = User.find params[ :user_id ]
    redirect_to( root_url ) unless current_user == @user
  end
  
end
