class ApplicationController < ActionController::Base
  protect_from_forgery
  

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  private 
  def stored_location_for(resource_or_scope)
    nil
  end

  def after_sign_in_path_for(resource_or_scope)
    user_path(resource_or_scope)
  end

  
end