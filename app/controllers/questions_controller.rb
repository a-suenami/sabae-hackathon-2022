class QuestionsController < ApplicationController
  # GET /questions or /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # POST /questions or /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to questions_url, notice: "Question was successfully created." }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:photo, :comment)
    end
end
