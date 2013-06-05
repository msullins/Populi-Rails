class BackboneController < ApplicationController
  def index
  	@last_camp = Campaign.last	
  end
end
