class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
	t.column :name, :string, :null => false
	t.column :age, :integer
	t.column :bio, :string
      t.timestamps
    end
  end
end
