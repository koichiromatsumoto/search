class Item < ApplicationRecord
	belongs_to :artist, optional: true
	belongs_to :label, optional: true
	belongs_to :genre, optional: true

	validates :item_name, presence: true
	validates :artist_id, presence: true
	validates :label_id, presence: true
	validates :genre_id, presence: true
	validates :sales, presence: true

end
