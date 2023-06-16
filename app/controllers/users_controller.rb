class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :redirect_to_catagories, only: %i[show index]
  # Splash page for unauthenticated users (see app/controllers/application_controller.rb)
  def splash
    if current_user
      redirect_to catagories_url, alert: "You are already logged in as, #{current_user.name}"
    else
      render :splash
    end
  end

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show; end

  # GET users/1/edit
  def edit; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  def redirect_to_catagories
    redirect_to catagories_url
  end
end
