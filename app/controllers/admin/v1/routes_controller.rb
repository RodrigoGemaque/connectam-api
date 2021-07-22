module Admin::V1
  class RoutesController < ApiController
    before_action :load_route, only: [:show, :destroy]
    def index 
      @routes = Route.all
    end

    def create 
      @route = Route.new
      @route.attributes = route_params
      save_route!
    end

    def show; end

    def destroy
      @route.destroy!
    end



    

    private

      def route_params
        params.require(:route).permit(:id, :departure, :arrival, :harbor_id)
      end

      def save_route!
        @route.save!
        render :show
      end




      def load_route
        @route = Route.find(params[:id])
      end

  end
end 

