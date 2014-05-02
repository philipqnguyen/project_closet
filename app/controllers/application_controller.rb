class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for user
  	user_panel_path
  end

  def after_sign_out_path_for user
  	root_path
  end


  
  protected
  # Configure attributes that users may access in order to sign up or update their account.
  # These permitted parameters are required for Devise authentication when using with Rails 4 app.
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :first_name << :last_name << :email
  	devise_parameter_sanitizer.for(:account_update) << :first_name << :last_name << :email
  end
end
