class ApplicationController < ActionController::Base
  def authenticate
    if !sign_in?
      redirect_to new_session_path
    end
  end

  def sign_in?
    session[:current_email].present?
  end
end
