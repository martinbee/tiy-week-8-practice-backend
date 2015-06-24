class UsersController < ApplicationController

  def create
    @user = User.create params_user
    @user.token = SecureRandom.hex(8)
    if @user.save
      render json: {error: 'success'}, status: 201
    else
      render json: {error: 'Incomplete Request'}, status: 422
    end
  end

  private

  def params_user
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
