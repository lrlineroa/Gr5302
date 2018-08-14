class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :nam_category
      t.string :desc_category
      t.references :material, foreign_key: true
      t.references :multimedia, foreign_key: true

      t.timestamps
    end
  end
end
