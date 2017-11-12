class SessionsController < ApplicationController
 auto_session_timeout_actions
 before_action :must_login, only: [:about]
  def new
  end
  def active
   render_session_status
  end

  def timeout
    render_session_timeout
  end
 def create
  	user = User.find_by(username: params[:username])

  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id

  		#flash[:success] ="Welcome #{current_user.name}!"

  		redirect_to root_path
  	else
  		flash.now[:danger] = "Your username or password does not match"
  		render 'new'
  	end
  end

def destroy
	flash[:success] = "Good bye #{current_user.name}!"
  	session[:user_id] = nil

  	redirect_to root_path
  end
end
