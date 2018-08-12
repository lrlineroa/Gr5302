class CreateTransportMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :transport_materials do |t|
      t.string :nam_transport_material
      t.string :desc_transport_material
      t.date :date_transport_material
      t.references :material, foreign_key: true
      t.references :recycling_center, foreign_key: true

      t.timestamps
    end
  end
end
