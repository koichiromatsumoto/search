class Genre < ApplicationRecord
	has_many :items, dependent: :destroy
	belongs_to :artist

	validates :genre_name, presence: true, uniqueness: true
end
