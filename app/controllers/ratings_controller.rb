class RatingsController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @rating = @item.ratings.build
  end

  def index
    @item = Item.find(params[:item_id]).include([:ratings])
    @ratings = @item.ratings
  end

  def create
    @item = Item.find(params[:item_id])
    @rating = @item.ratings.build(rating_params)
      if @rating.save
        redirect_to new_item_rating_path
        flash[:notice] = "Rating created."
      else
        render 'new'
      end
  end

  private
    def rating_params
      params.require(:rating).permit(:grouping, :rank, :score).merge(item_id: params[:item_id])
    end
  end
