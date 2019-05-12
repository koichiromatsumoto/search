class Artist < ApplicationRecord
	has_many :items, dependent: :destroy
	has_one :genre

	validates :artist_name, presence: true, uniqueness: true
	validates :yomi, presence: true, uniqueness: true
end
