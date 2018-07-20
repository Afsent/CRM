class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :set_order, only: [:show]

  def show
    @orders = Order.all
    if User.exists?(current_user.id)
      @user = User.find(current_user.id)
    else
      redirect_to root_path, :flash => { :error => "Такого пользователя не существует." }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(current_user.id)
  end
end
