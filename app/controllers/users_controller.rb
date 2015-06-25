class UsersController < ApplicationController

  def create
    @user = User.create params_user
    @user.token = SecureRandom.hex(8)
    @user.name = "#{['Falcon', 'Mongoose', 'Shark', 'Tiger', 'Cobra', 'Robin', 'Whale', 'Fox', 'Weasel', 'Goat', 'Dog'].sample}#{[*1...9].sample}"
    if @user.save
      render status: 201
    else
      render json: {error: 'Incomplete Request'}, status: 422
    end
  end

  def delete
  end

  private

  def params_user
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
