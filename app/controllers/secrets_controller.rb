class SecretsController < ApplicationController

  before_action :require_logged_in

  def show
    redirect_to new_session_path if current_user.nil?
  end

end
