module Admin::V1 
  class OwnerShipsController < ApiController
    before_action :get_owner_ship, only: [:show,:update, :destroy]
    def index
      @owner_ships = OwnerShip.all
    end
    def create 
      @owner_ship = OwnerShip.new
      @owner_ship.attributes = owner_ship_params
      save_owner_ship!
    end

    def show; end


    def update
      @owner.attributes = owner_ship_params
      save_owner_ship!
    end




    def destroy
      @owner_ship.destroy!
    end
    

    private

      def owner_ship_params
        params.require(:owner_ship).permit(:id, :name)
      end

      def save_owner_ship!
        @owner_ship.save!
        render :show
      end




      def get_owner_ship
        @owner_ship = OwnerShip.find(params[:id])
      end
  end
end
