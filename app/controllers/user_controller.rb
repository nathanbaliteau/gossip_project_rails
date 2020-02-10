class UserController < ApplicationController
  def show_profile
    @profile = User.find(params[:user_id])
  end
end
