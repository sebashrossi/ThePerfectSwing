class TrainingsController < ApplicationController
  def index
    @trainings = current_user.trainings
    @alltrainings = Training.all
    @users =  User.all.where.not(id: current_user.id, admin: true)
    @training_user = TrainingUser.new
  end

  def show
    @training = Training.find(params[:id])
    @sections = @training.sections
  end

  def new
    @training = Training.new
    @quote = [['“Leadership and learning are indispensable to each other.”', '― John F. Kennedy' ], ['“In learning you will teach, and in teaching you will learn.”', '― Phil Collins'], ['“I am always doing that which I cannot do, in order that I may learn how to do it.”', '― Pablo Picasso'], ['“The beautiful thing about learning is that nobody can take it away from you.”','― B.B. King']].sample
  end

  def create
    @training = Training.new(training_params)
    @training.company = current_user.company
    if @training.save!
      redirect_to new_training_section_path(@training)
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

  # def destroy
  #   @training = Training.find(params[:id])
  # end

  # private

  def training_params
    params.require(:training).permit(:name, :description, :department)
  end
end
