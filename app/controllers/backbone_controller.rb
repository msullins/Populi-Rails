class BackboneController < ApplicationController
  def index
  	@last_camp = Campaign.last
  	@random_campaigns=(1..@last_camp.id).to_a.sort{ rand()-0.5}[0..4]
  end
end
