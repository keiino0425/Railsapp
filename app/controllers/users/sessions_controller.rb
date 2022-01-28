# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def profile
    @user = current_user
  end

  def account
    @user = current_user
  end

  def profile_edit
    @user = current_user
    if @user.update(params.require(:user).permit(:username, :email, :password, :userimage, :userinfo))
      flash[:notice] = "ユーザー情報を更新しました"
      redirect_to "/users/profile/"
    else
      flash[:notice] = "エラー"
      render "/users/profile/"
    end
  end
end
