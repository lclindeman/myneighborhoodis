class NeighborhoodsController < ApplicationController
  
  # GET /neighborhoods
  # GET /neighborhoods.json
  def index
    @neighborhoods = Neighborhood.all
  end
end
