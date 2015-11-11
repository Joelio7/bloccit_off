class ItemsController < ApplicationController


  def create
    @user = current_user
    @new_item = Item.new

    if @item = @user.items.create(item_params)
       flash[:notice] = "item created"
    else
      flash[:error] = "Error saving item. Try again."
    end

    respond_to do |format|
      format.html {redirect_to request.referer}
      format.js
    end
  end

  def destroy
    @user = current_user
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "\"#{@item.name}\" was deleted successfully."
    else
      flash[:error] = "There was an error"
    end
    respond_to do |format|
      format.html {redirect_to request.referer}
      format.js
    end
  end

  def item_params
    params.require(:item).permit(:name)
  end
end
