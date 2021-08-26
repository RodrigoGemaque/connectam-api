module Admin::V1
  class OwnerShipsController < ApplicationController
    before_action :load_owner_ship, only: [:update, :destroy]
    def index 
      @owner_ships = OwnerShip.all
    end

    def create 
      @owner_ship = OwnerShip.new
      @owner_ship.attributes = owner_ship_params
      save_owner_ship!
    end
    def update 
      @owner_ship.attributes = owner_ship_params
      save_owner_ship!
    end

    def destroy
      @owner_ship.destroy!
    # rescue
    #   render_error(fields: @owner_ship.error.messages)  
    end
    


    private   
    def owner_ship_params
      return {} unless params.has_key?(:owner_ship)
      params.require(:owner_ship).permit(:id, :name, :email, :password, :password_confirmation, :profile)
    end
    
    def load_owner_ship
      @owner_ship = OwnerShip.find(params[:id])
    end

    def save_owner_ship!
      @owner_ship.save!
      render :show
    # rescue
    #   render_error(fields: @owner_ship.errors.messages) 
    end
  end
end