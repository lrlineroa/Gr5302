class CreateMultimedia < ActiveRecord::Migration[5.2]
  def change
    create_table :multimedia do |t|
      t.string :nam_multimedia
      t.string :desc_multimedia
      t.integer :id_multimedia_type
      t.references :multimedia_type, foreign_key: true

      t.timestamps
    end
  end
end
