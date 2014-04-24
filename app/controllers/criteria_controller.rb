class CriteriaController < ApplicationController
  def new
    @evaluation_session = EvaluationSession.find(params[:evaluation_session_id])
    @criterion = @evaluation_session.criteria.build
  end

  def index
    @evaluation_session = EvaluationSession.find(params[:evaluation_session_id]).include([:criteria])
    @criteria = @evaluation_session.criteria
  end

  def create
    @evaluation_session = EvaluationSession.find(params[:evaluation_session_id])
    @criterion = @evaluation_session.criteria.build(criterion_params)
      if @criterion.save
        redirect_to new_evaluation_session_criterion_path
        flash[:notice] = "Criterion created."
      else
        render 'new'
      end
  end

  private
    def criterion_params
      params.require(:criterion).permit(:name, :description, :rank_among_criteria).merge(evaluation_session_id: params[:evaluation_session_id])
    end
  end
