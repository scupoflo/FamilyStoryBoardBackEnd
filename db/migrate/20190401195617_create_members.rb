class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer "tree_owner_id"
      t.integer "family_member_id"
      t.string "relationship"

      t.timestamps
    end
  end
end
