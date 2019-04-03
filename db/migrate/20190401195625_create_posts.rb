class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer "author_id"
      t.string "title"
      t.string "picture"
      t.string "body"
      t.string "subject"
   
      t.timestamps
    end
  end
end
