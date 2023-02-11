class UserController < ApplicationController
    before_action :authenticate_user!, only: %i[ show edit update ]

  def index
  end

  def show
  end

  def edit
      @user = current_user
  end

  def update
        @user= current_user
   if @user.update_attributes(user_params)
    # Handle a successful update.
    render 'show'
  else
    render 'show'
  end
  end

  def destroy
     #respond_to do |format|
     #  format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
     #  format.json { head :no_content }
     #end
  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :name, :age , :avatar)
    end
end

