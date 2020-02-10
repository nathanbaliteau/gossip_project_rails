class WelcomeController < ApplicationController
  def user_id
    @user = params[:id]
  end
end
