class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.references :owner, null: false, foreign_keys: { to_table: :users }
      t.string :name, null: false

      t.timestamps
    end
  end
end
