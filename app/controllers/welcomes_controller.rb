class WelcomesController < ApplicationController
  def index
    @services = Service.all 
    @teams = Team.all 
    @pricings = Pricing.all 
    @skills = Skill.all 
    @frequentlys = Frequently.all 
  end
end
