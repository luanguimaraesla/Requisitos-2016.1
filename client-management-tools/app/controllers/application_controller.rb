class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :update_sanitized_params, if: :devise_controller?
  def update_sanitized_params
    if resource_class == Client
      Client::ParameterSanitizer.new(Client, :client, params)
    else
      Admin::ParameterSanitizer.new(Admin, :admin, params)
    end
  end

  def after_sign_in_path_for(resource)
    if resource_class == Client
      @client = current_client
    else
      @admin = current_admin
      admin_path(@admin)
    end
  end
end

class Client::ParameterSanitizer < Devise::ParameterSanitizer
  private
  def sign_in
    default_paramiters.permit(:sign_up, keys: [:email, :password, :password_confirmation, :current_password, :username, :name, :cpf, :phone, :company, :address])
  end

  def account_update
    default_paramiters.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password, :username, :name, :phone, :company, :address])
  end
end

class Admin::ParameterSanitizer < Devise::ParameterSanitizer
  private
  def sign_in
    default_paramiters.permit(:sign_up, keys: [:email, :password, :password_confirmation, :current_password])
  end

  def account_update
    default_paramiters.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password])
  end
end
