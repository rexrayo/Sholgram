class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  before_action :configure_devise_params, if: :devise_controller?

	# comentario prueba

  def configure_devise_params
  	devise_parameter_sanitizer.permit(:sign_up) do |user|
  		user.permit(:name, :email, :password, :password_confirmation)
  	end
  end
end
