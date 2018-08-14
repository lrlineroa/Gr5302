class CreateMaterialTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :material_types do |t|
      t.string :nam_material_type
      t.string :desc_material_type

      t.timestamps
    end
  end
end
