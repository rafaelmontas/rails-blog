class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :tags
      t.references :category_name, type: :string, references: :categories, null: true

      t.timestamps
    end
    rename_column :posts, :category_name_id, :category_name
  end
end
