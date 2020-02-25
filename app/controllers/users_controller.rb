class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @city = City.all
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render 'gossips/index'
    else
      render 'new'
    end

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :city_id, :description, :email, :password, :password_confirmation)
  end

end
