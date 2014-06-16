class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
	t.column :title, :string, :null => false
	t.column :duration, :integer
	t.column :year, :integer
	t.column :artist_id, :interger, :null => false
	t.column :genre_id, :interger, :null => false
      t.timestamps
    end
  end
end
