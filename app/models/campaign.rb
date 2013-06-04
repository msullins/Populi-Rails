class Campaign < ActiveRecord::Base
  belongs_to :user
  attr_accessible :end, :funded, :goal, :locality, :locality_type, :office, :start, :state, :zip
end
