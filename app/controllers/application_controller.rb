class ApplicationController < ActionController::Base
  # ==========ここから追加する==========
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name self_introduction sex img_name))
  end
  # ==========ここまで追加する==========
end
