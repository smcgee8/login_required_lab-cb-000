class SessionsController < ApplicationController


  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
    else
      redirect_to new_session_path
    end
  end

end
