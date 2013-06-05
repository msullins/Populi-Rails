class Usermod < ActiveRecord::Migration
  def up
  	remove_column :campaigns, :start
  	remove_column :campaigns, :end
  	add_column :campaigns, :start, :datetime
  	add_column :campaigns, :end, :datetime
  end

  def down
  end
end
