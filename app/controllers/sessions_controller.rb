class SessionsController < ApplicationController


  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to session_path(1)
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.clear
  end

  def show
    @name = current_user
  end

end
