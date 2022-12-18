class Admin::InquiriesController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]

  def index
    @questions = Question.all
  end

  # GET /questions/1/edit
  def edit
  end

  # PATCH/PUT /questions/1 or /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to question_url(@question), notice: "Question was successfully updated." }
        format.json { render :show, status: :ok, location: @question }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:photo, :comment)
    end
end
