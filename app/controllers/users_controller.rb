class UsersController < ApplicationController
  APP_SECRET ='scoobysama'
	before_action :authenticate, only: [:show, :me]

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

	def show
		user = User.find(params[:id])
		if @current_user.id == user.id
			render json: {user: user}, status: 200
		else
			render json: {error: "Access denied, imposter!"}, status: 401
		end
	end
end
