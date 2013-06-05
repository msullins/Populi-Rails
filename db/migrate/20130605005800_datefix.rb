class Datefix < ActiveRecord::Migration
  def up
  	remove_column :campaigns, :start
  	remove_column :campaigns, :end
  	add_column :campaigns, :start, :date
  	add_column :campaigns, :end, :date
  end

  def down
  end
end
