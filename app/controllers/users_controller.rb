class UsersController < ApplicationController
  before_filter :user_signed_in?, only: :show
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @courses = @user.courses
  end
end
