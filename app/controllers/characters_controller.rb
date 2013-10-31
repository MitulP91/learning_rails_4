class CharactersController < ApplicationController
	def index
		@characters = Character.all
	end

	def new
		@character = Character.new
	end

	def create
		Character.create(user_params)

		redirect_to characters_path
	end

	def show
		@character = Character.find(params[:id])
	end

	def edit
		@character = Character.find(params[:id])
	end

	def update
		character = Character.find(params[:id])
		character.update_attributes(user_params)

		redirect_to characters_path
	end

	def destroy
		character = Character.find(params[:id])

		character.destroy

		redirect_to characters_path
	end

	# Define private methods
	private

	def user_params
		params.require(:character).permit(:name, :gender, :bio, :video_game_id)
	end
end