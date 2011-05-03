class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :admin?
  ADMIN_PASSWORD = "vino7777"


  protected

  def authorize
    unless admin?
      flash[:notice] = "Unauthorized Access"
      redirect_to '/login'
      false
    end
  end

  def admin?
    session[:password] == ADMIN_PASSWORD
  end

end
