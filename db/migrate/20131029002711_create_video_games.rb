class CreateVideoGames < ActiveRecord::Migration
  def change
    create_table :video_games do |t|
    	t.string :title
    	t.string :genre
    	t.text :bio
    	t.integer :release_year
    	t.integer :company_id
    	
      t.timestamps
    end
  end
end
