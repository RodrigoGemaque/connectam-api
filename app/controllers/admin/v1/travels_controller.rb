module Admin::V1
  class TravelsController < ApplicationController
    before_action :load_travel, only: [:show, :destroy]
    def index 
      @travels = Travel.all
      # filter_by_departure if params[:departure] && params[:arrival]
      filter_by_date if params[:date]
      filter_by_departure if params[:departure] 
      filter_by_arrival if params[:arrival]
    end

    def create 
      @travel = Travel.new
      @travel.attributes = travel_params
      save_travel!
    end

    def show; end


    def destroy
      @travel.destroy!
    end
    
  private

  def load_travel
    @travel = Travel.find(params[:id])
  end

  def travel_params
    params.require(:travel).permit(:id, :date,:price, :hour, :route_id, :ship_id )
  end

  def save_travel!
    @travel.save!
    render :show
  end



  # FILTERS

    def filter_by_departure
      @travels = @travels.select do |r|
        r.route.departure == params[:departure]
      end    
    end
    def filter_by_arrival
      @travels = @travels.select do |r|
        r.route.arrival == params[:arrival]
      end    
    end
    def filter_by_date
      @travels = @travels.where(date: params[:date])
    end

  end
end 

