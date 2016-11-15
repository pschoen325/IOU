class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from ActiveRecord::RecordNotFound do
  flash[:warning] = 'Resource not found.'
  redirect_back_or root_path
end

def redirect_back_or(path)
  redirect_to request.referer || path
end

protected
 def authenticate_user!
   if user_signed_in?
     super
   else
     redirect_to login_path, :notice => 'if you want to add a notice'
     ## if you want render 404 page
     ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
   end
 end


 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
 end
end
