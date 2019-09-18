class SessionsController < ApplicationController
  
  def index
  end

  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] =  user.id
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to action: 'index', notice: "Logged Out!!"
  end

  
end
