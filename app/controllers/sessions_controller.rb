class SessionsController < ApplicationController


  def new

  end
  
  def create
    if params[:user].present?
      session[:user] = params[:user]
    else
      render :login
    end
  end
end
