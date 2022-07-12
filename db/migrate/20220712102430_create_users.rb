class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :password_digest
      t.string :token
      t.string :type

      t.timestamps
    end
    add_index :users, :token, unique: true
  end
end
