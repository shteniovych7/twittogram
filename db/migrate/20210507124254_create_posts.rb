class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :draft
      t.belongs_to :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
