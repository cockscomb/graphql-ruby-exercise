class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :blog, null: false, foreign_keys: { to_table: :blogs }
      t.references :author, null: false, foreign_keys: { to_table: :users }
      t.string :title, null: false
      t.text :body, null: false
      t.datetime :datetime, null: false

      t.timestamps
    end
    add_index :posts, [:blog_id, :datetime]
    remove_index :posts, :blog_id
  end
end
