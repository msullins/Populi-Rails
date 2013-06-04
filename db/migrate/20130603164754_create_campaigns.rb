class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :office
      t.string :locality_type
      t.string :locality
      t.string :state
      t.integer :zip
      t.float :goal
      t.float :funded
      t.string :start
      t.string :end
      t.references :user

      t.timestamps
    end
    add_index :campaigns, :user_id
  end
end
