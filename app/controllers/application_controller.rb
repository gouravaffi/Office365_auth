class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include AuthHelper

  def home
    login_url = get_login_url
    render html: "<a href='#{login_url}'>login with office 365</a>".html_safe
  end
end