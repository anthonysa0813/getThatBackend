class SeekerController < ApplicationController

   skip_before_action :authorize, only: [:create, :register]

  def create
    user = Seeker.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      user.regenerate_token
      render json: {token: user.token, name: user.name, email: user.email, type: user.type, phone: user.phone }
    else
      render json: { unauthorized: "Incorrect email or password" }, status: :unauthorized
    end
  end

  def register
    user = Seeker.find_by(email: params[:email])
    if user
      render json: { message:"The user is already registered" }
    else
      user = Seeker.new(email: params[:email], password: params[:password])
      user.save
      render json: {email: user.email, name: user.name, type: user.type, phone: user.phone, token: user.token}
    end
    # pp user
  end

  def destroy
    current_user.invalidate_token
    head :ok
  end
end