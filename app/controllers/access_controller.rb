class AccessController < ApplicationController
  
  layout 'log_in'
  before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index
  	menu
  	render('menu')
  end

  def menu
    
  end

  def login
  end

  def attempt_login
    authorized_user = User.authenticate(params[:username],params[:password])
    if authorized_user
      session[:user_id] = authorized_user.id
        session[:username] = authorized_user.username
      flash[:notice]="you are now logged in"
      redirect_to(:action => 'menu')
    else
           flash[:notice]="invalid username/password combination"
           redirect_to(:action => 'login')
    end
   end


  def logout
     session[:user_id] = nil
        session[:username] = nil
         flash[:notice]="you have been logged out."
         redirect_to(:action => 'login')
  end
end

  

