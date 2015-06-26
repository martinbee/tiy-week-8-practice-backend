class SessionController < ApplicationController

  def create
    @user = User.find_by email: email
    if (@user) && (@user.authenticate password)
      render status: 201
    else
      render json: {auth: "Incorrect Login"}, status: 422
    end
  end

private

  def email
    email = params[:email]
  end

  def password
    password = params[:password]
  end

end
