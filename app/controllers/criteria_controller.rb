class CriteriaController < ApplicationController
  def new
    @criterion = Criterion.new
  end

  def index
    @criteria = Criterion.all
  end
end
