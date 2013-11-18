class SessionsController < ApplicationController


  def new

  end

  def destroy
    reset_session
    redirect_to root_url, notice: "See ya!"
  end

  def create
    user = User.find_by(email_address: params[:email_address])
    if user.present?
      if user.authenticate(params[:password])
        # Yay!
        session[:user_id] = user.id
        redirect_to root_url
      else
        redirect_to '/login', notice: "Bad password."
      end
    else
      redirect_to '/login', notice: "User unknown, try again."
    end
  end
end


