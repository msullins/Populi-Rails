class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.text :address
      t.text :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :credit_card
      t.integer :expiration
      t.integer :security_code

      t.timestamps
    end
  end
end
