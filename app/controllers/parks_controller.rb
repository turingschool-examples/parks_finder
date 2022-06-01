class ParksController < ApplicationController
  def index
    @parks = ParksFacade.create_park(params[:state])
  end
end
