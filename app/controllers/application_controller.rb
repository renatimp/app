class ApplicationController < ActionController::Base

  include SessionsHelper

  private
    def require_logged_in_user
      if current_user.blank?
        flash[:danger] = 'Área restrita. Por favor, realize o login.'
        redirect_to entrar_url
      end
    end
end
