class CreateUses < ActiveRecord::Migration[5.2]
  def change
    create_table :uses do |t|
      t.string :nam_use
      t.string :desc_
      t.string :use
      t.references :material, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
