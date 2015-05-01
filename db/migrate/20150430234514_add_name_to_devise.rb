class AddNameToDevise < ActiveRecord::Migration
  def change
  	add_column :users, :name, :text
  end
end
