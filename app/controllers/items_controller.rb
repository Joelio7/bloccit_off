class ItemsController < ApplicationController


  def create
    @user = current_user

    if @item = @user.items.create(item_params)
       flash[:notice] = "assignment created"
    else
      flash[:error] = "Error saving item. Try again."
    end

    redirect_to current_user
  end

def item_params
  params.require(:item).permit(:name)
end
end
