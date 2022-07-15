class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authorize, only: [:user]

  def current_user
    @current_user ||= authenticate_token
  end

  def authorize
    authenticate_token || respond_unauthorized('Access denied')
  end

  private

  def respond_unauthorized(message)
    error = { unauthorized: message }
    render json: error, status: :unauthorized
  end

  def authenticate_token # retorna un user || nil
    authenticate_with_http_token do |token, _options|
      User.find_by(token: token)
    end
  end
end
