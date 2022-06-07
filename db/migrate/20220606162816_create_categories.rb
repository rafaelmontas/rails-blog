class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories, id: false do |t|
      t.string :name

      t.timestamps
    end
  end
end
