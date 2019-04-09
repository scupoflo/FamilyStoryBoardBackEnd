class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.integer "tree_id"
      t.string "name"
      t.string "picture"
      t.timestamps
    end
  end
end
