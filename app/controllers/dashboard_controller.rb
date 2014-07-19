class DashboardController < ApplicationController

  protect_from_forgery
  def home
    if session[:signed_in] != true
      redirect_to signin_path
    end
  end

  def logout
    session[:signed_in] = false
    redirect_to signin_url
  end

  def login
    @email = params[:email]
    @password= params[:password]
    if @email && @password && session[:signed_in] != true
      session[:signed_in] = true
      redirect_to '/home'
    end
  end

end



