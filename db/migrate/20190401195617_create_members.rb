class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer "group_id"
      t.references :family_member, polymorphic: true, index:true
      t.string "relationship"
      t.string "name"
      t.string "picture"
      t.timestamps
    end
  end
end
