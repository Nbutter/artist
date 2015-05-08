class SessionsController < ApplicationController
  def new
  end
  
  def create
    name = params[:name]
    password = params[:password]
    user = User.find_by(name: name)

    if user && user.authenticate(password)
      session[:current_user] = user.id
      redirect_to admin_artworks_path
    else
      render :new
    end
  end
  
  def destroy
    session[:current_user] = nil
    # redirect_to root_path
  end

end