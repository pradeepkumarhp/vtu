class ApplicationController < ActionController::Base
  protect_from_forgery

protected

  def confirm_logged_in
  	unless session[:user_id]
  flash[:notice] = "please log in"
  redirect_to(:controller => 'access', :action => 'login')
  return false
  else
  return true
  end
  end

end
