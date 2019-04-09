class CreateNonUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :non_users do |t|
      t.string :name
      t.string :picture
      t.integer :group_id

      t.timestamps
    end
  end
end
