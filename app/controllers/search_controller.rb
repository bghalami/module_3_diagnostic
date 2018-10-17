class SearchController < ApplicationController
  def index
    zip_code = params[:q]
    search_results = EnergyService.new.get_all_stations
    
    binding.pry
  end
end
