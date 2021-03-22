class TrainingsController < ApplicationController
  def index
    @trainings = current_user.trainings
  end

  def show
    @training = Training.find(params[:id])
    @sections = @training.sections
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new
    @training.user = current_user
    @training.company = current_user.company
    if @training.save!
      redirect_to trainings_path
    else
      render :new
    end
  end

  # def edit
  #   @training = Training.find(params[:id])
  # end

  # def update
  #   @training = Training.find(params[:id])
  #   @training.update(training_params)
  # end

  # def destroy
  #   @training = Training.find(params[:id])
  # end

  # private

  # def training_params
  #   params.require(:training).permit(:name, :description, :department)
  # end
end
