module Admin::V1
  class OrdersController < ApiController
    before_action :load_order, only: [:show]
    def index
      @orders = Order.all
    end

    def create 
      @order = Order.new
      @order.attributes = order_params
      save_order!
    end


    def show; end
    
    private

    def order_params
      params.require(:order).permit(
                                    line_items_attributes: [:quantity, :travel_id] )
    end

    def save_order!
      if @order.save!
        render :show
      else
        render json: order.errors, status: :unprocessable_entity  
      end
    end

    def load_order
      @order = Order.find(params[:id])
      render :show
    end

  end
end 

