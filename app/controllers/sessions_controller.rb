class SessionsController < ApplicationController

  def login
    session[:user] = params[:user]
  end
end
