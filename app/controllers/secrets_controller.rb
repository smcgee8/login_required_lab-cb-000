class SecretsController < ApplicationController
  before_action

  def show
    redirect_to new_session_path if current_user.nil?
  end

end
