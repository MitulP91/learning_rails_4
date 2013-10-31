class Character < ActiveRecord::Base
  # Creates an ActiveRecord relationship
  has_and_belongs_to_many :video_games
end