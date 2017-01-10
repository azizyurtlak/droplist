class ItemsController < ApplicationController
  def create
    item = Item.new(item_params)
    item.list = List.find(params[:list_id])
    item.save

    redirect_to item.list
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update_attributes(item_params)
    redirect_to item.list
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to item.list
  end

  private
  def item_params
    params.require(:item).permit(:content, :is_done, :due_time, :reminder_time, :notes)
  end
end
