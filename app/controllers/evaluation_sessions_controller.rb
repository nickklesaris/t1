class EvaluationSessionsController < ApplicationController
  def new
    @evaluation_session = EvaluationSession.new
  end

  def index
    @evaluation_sessions = EvaluationSession.all
  end

  def create
    @evaluation_session = EvaluationSession.new(evaluation_session_params)
      if @evaluation_session.save
        redirect_to new_criterion_path
        flash[:notice] = "Evaluation session created."
      else
        render 'new'
        flash[:notice] = "Evaluation session not created. Please correct errors."
      end
  end

  private
    def evaluation_session_params
      params.require(:evaluation_session).permit(:name, :description, :item_type)
    end
end
