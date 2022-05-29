class ParksController < ApplicationController
  def index
    @parks = Parks.all
  end
end
