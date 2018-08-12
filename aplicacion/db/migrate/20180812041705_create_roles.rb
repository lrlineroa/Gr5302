class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :nam_role
      t.string :desc_role

      t.timestamps
    end
  end
end
