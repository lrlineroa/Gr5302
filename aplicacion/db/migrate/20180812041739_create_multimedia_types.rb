class CreateMultimediaTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :multimedia_types do |t|
      t.string :nam_multimedia_type
      t.string :desc_multimedia_type

      t.timestamps
    end
  end
end
