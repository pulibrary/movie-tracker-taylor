class UsersController < ApplicationController
  def new
  end

  def index
    @current_user = current_user.id
  end
end
