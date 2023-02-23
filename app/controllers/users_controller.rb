class UsersController < ApplicationController
  APP_SECRET ='scoobysama'
	before_action :authenticate, only: [:me, :create_habit]

	def me
		render json: { user: @current_user}, status: 200
	end

	def index
		render json: User.all, status: 200
	end

	def login
		user = User.find_by(email: params[:email])

		if user && user.authenticate(params[:password])
			#encode a token to send back
			token = JWT.encode({user_id: user.id, username: user.username}, APP_SECRET, 'HS256')
			render json: {user: user, token: token}, status: 200
		else
			render json: {error: 'Invalid email or password'}, status: 422
		end
	end

	def create
		user = User.new(email: params[:email], password: params[:password])
		if user.save
			#create the token here
			render json: {user: user, token: nil}, status: 200
		else
			render json: {error: user.errors.full_messages[0]}, status: 422
		end
	end

	def create_habit
		habit = Habit.create(name: params[:name], user_id: @current_user.id)
		render json: {habit: habit}, status: 200
	end

	def show
		user = User.find_by(id: params[:id])
		render json: user
	end

	def my_habits
		user = User.find_by(id: params[:id])
		if user
		render json: user.habits
		end
	end

	# def update_my_habits
	# 	user = User.find_by!(id: params[:id], habits: params[:habits])
	# 	if user.update(user_params)
	# 		render json: user
	# end

	
end




