class UsersController < ApplicationController
  def show
    @user = current_user
    @items = @user.items.order(created_at: :desc)
    @new_item = Item.new
  end
end
