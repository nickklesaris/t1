class CriteriaController < ApplicationController
  def new
    @criterion = Criterion.new
  end

  def index
    @criteria = Criterion.all
  end

  def create
    @criterion = Criterion.new(criterion_params)
      if @criterion.save
        redirect_to 'criteria/new'
        flash[:notice] = "Criterion created."
      else
        render 'new'
      end
  end

  private
    def criterion_params
      params.require(:criterion).permit(:name, :description)
    end
  end
