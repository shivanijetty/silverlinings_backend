class HabitsController < ApplicationController

  def index
		render json: Habit.all, status: 200
	end

end
