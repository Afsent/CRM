class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :set_order, only: [:show]

  def show
    if User.exists?(current_user.id)
      @user = User.find(current_user.id)
    else
      redirect_to root_path, :flash => { :error => "Такого пользователя не существует." }
    end
    if current_user != @user
      @orders = []
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @orders = Order.where(:user_id => current_user.id)
  end
end
