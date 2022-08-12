class ItemsController < ApplicationController
  before_action :set_watchlist

  def create
  @item = @watchlist.items.create(item_params)
  redirect_to @watchlist
  end

  def destroy
    @item = @watchlist.items.find(params[:id])
    @item.destroy
    redirect_to @watchlist 
  end

  private

  def set_watchlist
  @watchlist = Watchlist.find(params[:watchlist_id])
  end

  def item_params
  params[:item].permit(:title, :year, :genre)
  end
end
