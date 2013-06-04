class UserFix < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.remove :credit_card
  		t.remove :expiration
  		t.remove :security_code
  	end
  end
end
