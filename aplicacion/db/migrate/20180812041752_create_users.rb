class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nam1_user
      t.string :nam2_user
      t.string :lastnam1_user
      t.string :lastnam2_user
      t.string :tel_user
      t.string :address_user
      t.string :identification_user
      t.string :email_user
      t.string :password
      t.date :date_user
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
