class CreatePostOffices < ActiveRecord::Migration
  def change
    create_table :post_offices do |t|
      t.string :name, null: false 
      t.integer :pincode, null: false 
      t.index :pincode
      t.string :office_type, null: false 
      t.string :delivery_type, null: false 
      t.string :division, null: false 
      t.string :region, null: false 
      t.string :circle, null: false 
      t.string :taluk
      t.string :district, null: false 
      t.string :state, null: false 
    end
  end
end
