class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:create, :register]

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      user.regenerate_token
      render json: {token: user.token}
    else
      render json: { unauthorized: "Incorrect email or password" }, status: :unauthorized
    end
  end

  def register
    user = User.find_by(email: params[:email])
    if user
      render json: { message:"The user is already registered" }
    else
      user = User.new(email: params[:email], password: params[:password])
      user.save
      render json: {email: user.email, token: user.token}
    end
    # pp user
  end

  def destroy
    current_user.invalidate_token
    head :ok
  end

  private
  def user_params
    
  end
end