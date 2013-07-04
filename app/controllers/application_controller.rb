class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_dd_flash_message

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



  def set_dd_flash_message
    if not current_user.admin?
      flash.now[:notice] = "You need to pay 1000 deposit amount - Click <a href='#{terms_use_path}'>here</a> for details!".html_safe
end
  end

end
