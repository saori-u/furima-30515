class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :post_code, null: false
      t.string :building_name, null: false
      t.string :phone_number, null: false
      t.string :house_number
      t.string :city, null: false
      t.integer :prefectures_id, null: false
      t.references :order, foreign_ker: true
      t.timestamps
    end
  end
end
