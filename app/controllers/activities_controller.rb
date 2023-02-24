class ActivitiesController < ApplicationController

  def enroll
    habit = Habit.find(params[:habit_id])
    activity = Activity.create!(user_id: user.id, habit_id: habit.id, progress: progress, habit_image: habit.image)

    render json: activity, status: 200
  end


  def giveup
    activity = Activity.find_by(id: params[:id])
    if (activity)
      activity.destroy
      render json: {}
    else
      render json: {error: "Progress not found"}, status: 422
    end
  end
  
end




