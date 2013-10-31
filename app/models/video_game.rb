class VideoGame < ActiveRecord::Base
  # Creates an ActiveRecord relationship
  belongs_to :company
  has_and_belongs_to_many :characters
end
