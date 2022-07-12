class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      user.regenerate_token
      render json: {token: user.token}
    else
      render json: { unauthorized: "Incorrect email or password" }, status: :unauthorized
    end
  end
end