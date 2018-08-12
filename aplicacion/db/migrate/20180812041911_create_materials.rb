class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :nam_material
      t.string :desc_material
      t.integer :id_material_type
      t.references :material_type, foreign_key: true

      t.timestamps
    end
  end
end
