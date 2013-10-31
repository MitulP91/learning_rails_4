class Company < ActiveRecord::Base
	# Creates an ActiveRecord relationship
  has_many :video_games
end
