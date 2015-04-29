class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :amazon_id
      t.integer :ratings
      t.date :finished_on

      t.timestamps
    end
  end
end
