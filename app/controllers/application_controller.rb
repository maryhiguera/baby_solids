class ApplicationController < ActionController::API
  # allow_browser versions: :modern
  # protect_from_forgery with: :exception, unless: -> { request.format.json? }

  # Include cookies support for API
  include ActionController::Cookies

  def current_user
    User.find_by(id: cookies.signed[:user_id])
  end

  def authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
    end
  end
end
