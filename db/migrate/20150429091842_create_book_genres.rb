class CreateBookGenres < ActiveRecord::Migration
  def change
    create_table :book_genres do |t|

      t.timestamps
    end
  end
end
