module Admin::V1
  class TicketsController < ApiController
    ActionController::Parameters.permit_all_parameters = true
    before_action :load_ticket, only: [:show]
    def index
      @tickets = Ticket.all
    end

    def create 
      @ticket = Ticket.new
      @ticket.attributes = ticket_params
      save_ticket!
    end


    def show; end
    
    private

    def ticket_params
       params.require(:ticket).permit(  :name, :cpf, :phone_number) 
      
      # byebug
      # params.require(:ticket).map do |t|
      #   t.permit(
      #     :id,
      #     :name,
      #     :cpf,
      #     :phone_number,
      #     :line_item_id
      #   )
      # end
    end

    def save_ticket!
      # byebug
      
      if @ticket.save!
        render :show
      else
        render json: ticket.errors, status: :unprocessable_entity  
      end
    end

    def load_ticket
      @ticket = Ticket.find(params[:id])
      render :show
    end

  end
end 

