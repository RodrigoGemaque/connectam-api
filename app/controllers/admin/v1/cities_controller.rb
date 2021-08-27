module Admin::V1
  class CitiesController < ApplicationController
    before_action :load_city, only: [:show, :destroy, :update]
    def index
      @cities = City.all
    end

    def create 
      @city = City.new
      @city.attributes = city_params
      save_city!
    end

    def show; end


    def update
      @city.attributes = city_params
      save_city!
    end

    def destroy
      @city.destroy!
    end



    

    private

      def city_params
        params.require(:city).permit(:id, :name)
      end

      def save_city!
        @city.save!
        render :show
      end




      def load_city
        @city = City.find(params[:id])
      end

  end
end
