class TrainingUsersController < ApplicationController
  def create
    array_of_ids = params[:training_user][:users].reject { |c| c.empty? }
    @training = Training.find(params[:training_id])
    array_of_ids.each do |id|
      user = User.find(id)
      TrainingUser.create(training: @training, user: user)
    end
    redirect_to trainings_path, notice: "Successfully created Nico and Andrew"
  end
end
