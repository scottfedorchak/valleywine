class SessionsController < ApplicationController


   def create
    if params[:password] == ADMIN_PASSWORD
      session[:password] = params[:password]
      flash[:notice] = "You are now logged in."
      redirect_to '/posts'
    else
      redirect_to :action => 'new'
      flash[:notice] = "Incorrect Password, please try again."
    end
  end

  def destroy
    reset_session
    flash[:notice] = 'Successfully logged out'
    redirect_to '/main_pages/home'
  end

end

