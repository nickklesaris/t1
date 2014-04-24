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
        redirect_to evaluation_sessions_path
        flash[:notice] = "Evaluation session created."
      else
        render 'new'
        flash[:notice] = "Evaluation session not created. Please correct errors."
      end
  end

  def show
    @evaluation_session = EvaluationSession.find(params[:id])
    @criterion = Criterion.new
    @criteria = @evaluation_session.criteria
  end

  private
    def evaluation_session_params
      params.require(:evaluation_session).permit(:name, :description, :item_type)
    end
end
