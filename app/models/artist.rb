class Artist < ActiveRecord::Base
	#attr_accessible :songs_attributes
	has_many :songs, :autosave => 'true'
	
	accepts_nested_attributes_for :songs
end
