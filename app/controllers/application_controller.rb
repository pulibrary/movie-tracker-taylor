class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # before_action :correct_user,   only: [:edit, :update]

  # private

  # def correct_user
  #   @user = User.find(params[:id])
  #   redirect_to(root_url) unless @user == current_user
  # end
end
