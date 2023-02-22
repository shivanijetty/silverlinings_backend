class ActivitiesController < ApplicationController

  def add_habit
    activity = Activity.create!(user_id: params[:user_id], habit_id: params[:habit_id], counter: params[:counter] )
    render json: activity, status: 200
  end

end
