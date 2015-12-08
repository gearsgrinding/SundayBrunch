class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include SessionsHelper
  protect_from_forgery with: :exception

  def logged_in_user
      unless logged_in?
        store_location
        redirect_to login_url
      end
    end
end
