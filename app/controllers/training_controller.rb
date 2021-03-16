class TrainingController < ApplicationController
  def index
    @trainings = Training.all
  end

  def show
    @training = Training.find(param[:id])
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new
    @training.user = current_user
    if @training.save!
      redirect_to training_path(@training)
    else
      render :new
    end
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])
    @training.update(training_params)
  end

  def destroy
    @training = Training.find(params[:id])
  end

  private

  def training_params
    params.require(:training).permit(:name, :description, :department)
  end
end
