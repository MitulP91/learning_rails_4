class VideoGamesController < ApplicationController
	def index
		@video_games = VideoGame.all
	end

	def new
		@video_game = VideoGame.new
	end

	def create
		VideoGame.create(user_params)
		
		redirect_to video_games_path
	end

	def show
		@video_game = VideoGame.find(params[:id])
	end

	def edit
		@video_game = VideoGame.find(params[:id])
	end

	def update
		video_game = VideoGame.find(params[:id])
		video_game.update_attributes(user_params)

		redirect_to video_games_path
	end

	def destroy
		video_game = VideoGame.find(params[:id])
		video_game.characters.each do |char|
			char.destroy
		end

		video_game.destroy

		redirect_to video_games_path
	end

	# Define private methods
	private

	def user_params
		params.require(:video_game).permit(:title, :release_year, :genre, :bio, :company_id)
	end
end
