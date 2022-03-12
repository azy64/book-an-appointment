class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end
end
