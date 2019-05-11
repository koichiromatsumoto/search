class AddYomiToArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :yomi, :string
  end
end
