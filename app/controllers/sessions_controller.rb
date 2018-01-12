class SessionsController < ApplicationController

  def login
    if params[:user].present?
      session[:user] = params[:user]
    else
      render :login
    end
  end
end
