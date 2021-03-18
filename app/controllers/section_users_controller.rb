class SectionUsersController < ApplicationController
  def new
  end

  def update
    @section_user = SectionUser.find(params[:id])
    @questions = @section_user.section.questions
    given_answers = params[:answers]
    counter = 0
    given_answers.keys.each do |key|
      given_answer = given_answers[key][:selected_answer]
      question_id = key.split("_")[1].to_i
      correct_answer = @questions.find(question_id).answer
      if given_answer == correct_answer
        counter += 1
      end
    end
    final_score = (counter/@questions.length.to_f) * 100
    @section_user.quiz_score = final_score
    if @section_user.save
      redirect_to section_path(@section_user.section), notice: "Your score was #{@section_user.quiz_score}"
    end
  end

  def show
  end

  def edit
  end
end
