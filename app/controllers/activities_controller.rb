class ActivitiesController < ApplicationController

  def index
    render json: Activity.all, status: 200
  end
  
  def show
    activity = Activity.find_by(id: params[:id])
    render json: activity
  end

  def enroll
    habit = Habit.find(params[:habit_id])
    activity = Activity.create!(user_id: user.id, habit_id: habit.id, progress: progress, habit_image: habit.image)
    render json: activity, status: 200
  end

  def track_progress
    activity = Activity.find(params[:id])
    if activity
      activity.update!(progress: activity.progress + 1)
      render json: activity
    else
      render json: activity.error.full_messages, status: 422
    end
  end

  def giveup
    activity = Activity.find(params[:id])
    if activity
      activity.destroy
      render json: {}
    else
      render json: {error: "Progress not found"}, status: 422
    end
  end
  
end




