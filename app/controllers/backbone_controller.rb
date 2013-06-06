class BackboneController < ApplicationController
  def index
  	@last_camp = Campaign.last
  	@random_campaigns=(2..@last_camp.id).to_a.sort{ rand()-0.5}[0..4]
  end
  def about
  end
end
