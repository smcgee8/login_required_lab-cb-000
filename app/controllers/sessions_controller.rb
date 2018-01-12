class SessionsController < ApplicationController


  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      render :welcome
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.clear
  end

end
