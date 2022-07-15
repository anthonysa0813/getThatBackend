class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :operation_type
      t.string :address
      t.integer :montly_price
      t.integer :maintance
      t.string :property_type
      t.integer :bedrooms_count
      t.integer :bathroom_count
      t.integer :area
      t.boolean :pets_allowed
      t.text :description
      t.string :photo
      t.boolean :active_published, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
