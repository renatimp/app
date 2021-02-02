class UsersController < ApplicationController
  before_action :require_logged_in_user, only: [:show, :edit, :update]

  def new
    redirect_to user_contacts_path(current_user) unless current_user.blank?
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Usuário cadastrado com sucesso'
      redirect_to root_url
    else
      render 'new'

    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end
end
