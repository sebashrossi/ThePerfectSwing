class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
    @questions = @section.questions
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new
    @section.user = current_user
    if @section.save!
      redirect_to section_path(@training)
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

  private

  def section_params
    params.require(:section).permit(:name, :length, :description, :video_url)
  end
end
