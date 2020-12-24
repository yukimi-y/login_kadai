class ItemsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create!(name: item_params[:name], date: item_params[:date], user_id: current_user.id)
  end

  private

  def item_params
    params.require(:item).permit(:name, :date)
  end
end
