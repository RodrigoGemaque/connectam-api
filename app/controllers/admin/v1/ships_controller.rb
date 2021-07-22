module Admin::V1
  class ShipsController < ApiController
    before_action :load_ship, only: [:show]
    def index
      @ships = Ship.all
    end

    def create
      @ship = Ship.new
      @ship.attributes = ship_params
      save_ship!
    end

    def show; end
    
    private

    def load_ship
      @ship = Ship.find(params[:id])
      render :show
    end

    def ship_params
      params.require(:ship).permit(:id, :name, :owner_ship_id)
    end

    def save_ship!
      @ship.save!
      render :show
    end
      

  end
end
