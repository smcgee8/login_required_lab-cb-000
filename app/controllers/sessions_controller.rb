class SessionsController < ApplicationController


  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end

end
