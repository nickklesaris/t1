class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def create
    @item = Item.new(item_params)
      if @item.save
        redirect_to new_item_path
        flash[:notice] = "Item created."
      else
        render 'new'
        flash[:notice] = "Item not created. Please correct errors."
      end

  end

    def show
    @item = Item.find(params[:id])
    @rating = Rating.new
    @rating = @item.rating
    @ratings = @item.ratings
  end

  private
    def item_params
      params.require(:item).permit(:name, :description)
    end

end
