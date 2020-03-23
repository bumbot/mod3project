class QuestionsController < ApplicationController
    def index
        questions = Question.all
        options = {
            include: [:battles]
        }
        render json: QuestionSerializer.new(questions, options)
    end

    def show
        question = Question.find(params[:id])

        render json: QuestionSerializer.new(question)
    end

    # def create
    #     question = Question.new()
    # end
end
