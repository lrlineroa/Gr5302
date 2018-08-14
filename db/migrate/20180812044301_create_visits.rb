class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.string :nam_visit
      t.string :desc_
      t.string :visit
      t.references :recycling_center, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
