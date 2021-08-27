module Admin::V1
  class ShipsController <  ApplicationController
    before_action :load_ship, only: [:show, :destroy, :update]
    def index
      @ships = Ship.all
    end

    def create
      @ship = Ship.new
      @ship.attributes = ship_params
      save_ship!
    end

    def show; end

    def update
      @ship.attributes = ship_params
      save_ship!
    end

    def destroy
      @ship.destroy!
    end
    
    private

    def load_ship
      @ship = Ship.find(params[:id])
      # render :show
    end

    def ship_params
      params.require(:ship).permit(:name,:image, :owner_ship_id)
    end

    def save_ship!
      @ship.save!
      render :show
    end
      

  end
end
