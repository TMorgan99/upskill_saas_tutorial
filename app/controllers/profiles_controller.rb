class ProfilesController < ApplicationController

# profiles#new
  def new
    @profile = Profile.new
  end
  
end
