class ApplicationController < ActionController::API
  # allow_browser versions: :modern
  # protect_from_forgery with: :exception, unless: -> { request.format.json? }
end
