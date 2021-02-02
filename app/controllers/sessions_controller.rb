class SessionsController < ApplicationController
  def new
    redirect_to user_path(current_user) unless current_user.blank?
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      sign_in(user)
      redirect_to user_contacts_path(current_user)
    else
      flash.now[:danger] = 'Email ou senha inválidos'
      render 'new'

    end
  end

  def destroy
    sign_out
    flash[:success] = "Logout realizado com sucesso!"
    redirect_to entrar_path
  end

end
