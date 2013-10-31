class CreateTableCharactersVideoGames < ActiveRecord::Migration
  def change
  	create_table :characters_video_games, :id => false do |t|
  		t.integer :character_id
  		t.integer :video_game_id
  	end
  end
end