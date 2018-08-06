class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    if User.exists?(current_user.id)
      @user = User.find(current_user.id)
    else
      redirect_to root_path, :flash => { :error => "Такого пользователя не существует." }
    end
  end
end
