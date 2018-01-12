class SessionsController < ApplicationController


  def new

  end

  def create
    if params[:user].present?
      session[:user] = params[:user]
    else
      redirect_to :new
    end
  end

end
