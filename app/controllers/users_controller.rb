class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @items = @user.items.order(created_at: :desc)
    @new_item = Item.new


  end



end
