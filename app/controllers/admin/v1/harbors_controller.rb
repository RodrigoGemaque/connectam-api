module Admin::V1
  class HarborsController < ApiController
    before_action :load_harbor, only: [:show]
    
    def index
      @harbors = Harbor.all
    end
    def create 
      @harbor = Harbor.new
      @harbor.attributes = harbor_params
      save_harbor!
    end

    def show; end
    

    private 

    def load_harbor
      @harbor = Harbor.find(params[:id])
    end

    def harbor_params
      params.require(:harbor).permit(:id, :name, :city_id)
    end

    def save_harbor!
      @harbor.save
      render :show
    end

  end
end


