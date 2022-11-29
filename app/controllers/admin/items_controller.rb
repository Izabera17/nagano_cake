class Admin::ItemsController < ApplicationController
  
  def index
    @item = Item.page(params[:page])
    @items = Item.all
  end

  def new
    @items = Item.new 
  end

  def create
    @items = Item.new(item_params)

    if @items.save!
      redirect_to admin_item_path(@items.id)
    else
      @items = Item.all 
      render :index
    end
  end

  def show
    @items = Item.find(params[:id])
  end
  
  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to admin_item_path(item.id)
  end

  def edit
    @items = Item.find(params[:id])
  end
  
  
  
  def destroy
    item = Item.find(params[:id])  
    item.destroy 
    redirect_to admin_items_path  
  end
  
  
  
  private

  def item_params
    params.require(:item).permit(:name, :introduction, :price, :is_active, :image, :genre_id)
  end
end
