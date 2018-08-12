class CreateEnvironments < ActiveRecord::Migration[5.2]
  def change
    create_table :environments do |t|
      t.string :nam_
      t.string :environment
      t.string :desc_
      t.string :environment
      t.references :multimedia, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
