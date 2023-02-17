class ActivitiesController < ApplicationController

  def create
    activity = Activity.create!(user_id: params[:user_id], habit_id: params[:habit_id])
    render json: activity, status: 200
  end
end
