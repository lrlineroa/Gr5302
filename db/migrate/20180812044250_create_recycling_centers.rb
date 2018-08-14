class CreateRecyclingCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :recycling_centers do |t|
      t.string :nam_recycling_center
      t.string :desc_recycling_center
      t.string :address_recycling_center
      t.string :tel_recycling_center
      t.string :web_recycling_center

      t.timestamps
    end
  end
end
