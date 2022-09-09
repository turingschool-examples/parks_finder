class ParksController < ApplicationController

  def index
    @parks = ParkFacade.service(params[:state])
  end

end