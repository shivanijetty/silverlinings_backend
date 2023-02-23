class ActivitiesController < ApplicationController

  def add_habit
    activity = Activity.create!(user_id: @current_user.id, habit_id: params[:habit_id], counter: params[:counter])
    render json: {activity: activity}, status: 200
  end

end
