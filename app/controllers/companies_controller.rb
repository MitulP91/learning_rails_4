class CompaniesController < ApplicationController
	def index
		# Create array of all companies stored in the database
		@companies = Company.all
	end

	def new
		# Pass empty company to partial
		@company = Company.new
	end

	def create
		# Create new company based on partial form results
		Company.create(user_params)
		redirect_to companies_path
	end

	def show
		# Find specific company
		@company = Company.find(params[:id])
	end

	def edit
		# Pass specific company to partial form
		@company = Company.find(params[:id])
	end

	def update
		# Update company based on partial form results
		company = Company.find(params[:id])
		company.update_attributes(user_params)

		redirect_to companies_path
	end

	def destroy
		# Find specific company
		company = Company.find(params[:id])

		# Destroy all video games and characters associated with company
		company.video_games.each do |game|
			game.characters.each do |char|
				char.destroy
			end
			game.destroy
		end

		# Destroy the company
		company.destroy

		# Redirect to main companies page
		redirect_to companies_path
	end

	# Define private methods
	private

	def user_params
		params.require(:company).permit(:name)
	end
end
