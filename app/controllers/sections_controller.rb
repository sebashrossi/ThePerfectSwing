class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    # TODO : REFACTOR
    @section = Section.find(params[:id])
    @questions = @section.questions
    @company = current_user.company
    @training_id = Section.find(params[:id]).training_id
    @training = Training.find(@training_id)
    @sections = Section.where(training_id: @training)
    @section_user = current_user.section_users.find_by(section: @section)
  end

  def new
    @t = Time.now
    @training = Training.find(params[:training_id])
    @section = Section.new
  end

  def create
    @training = Training.find(params[:training_id])
    @section = Section.new(section_params)
    @section.training = @training
    if @section.save!
      redirect_to section_path(@section)
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    @section.update(section_params)
  end

  def destroy
    @section = Section.find(params[:id])
  end

  def quiz
    @section = Section.find(params[:id])
    @questions = @section.questions
    @section_user = current_user.section_users.find_by(section: @section)
  end

  def training
    @training_id = Section.find(params[:id]).training_id
    @training = Training.find(@training_id)
  end

  def calc_quiz_score


  end

  private

  def section_params
    params.require(:section).permit(
      :name, :length, :description, :video_url,
      questions_attributes: [:id, :_destroy, :content, :answer, wrong_answers_attributes: [:id, :_destroy, :content]])
  end
end
