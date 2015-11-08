class WelcomeController < ApplicationController
  def index
    @campaigns = Campaign.all[0..2]
  end
end
