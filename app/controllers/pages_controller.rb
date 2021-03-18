class PagesController < ApplicationController

  def home
  end

  def dashboard
    @t = Time.now
    @company = current_user.company
    @trainings = current_user.trainings
  end
end
