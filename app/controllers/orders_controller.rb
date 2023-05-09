class OrdersController < ApplicationController
  def create
    #binding.pry # pry usada para debugar o código
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.status = :pending
    
    if @order.save
      flash[:notice] = 'Pedito Criado!'      
    else
      flash[:notice] = 'Erro ao criar seu pedido!'      
    end
    redirect_to root_path
  end

  private

  def order_params
    params.permit(:product_id)
    #params.require(:order).permit(:product_id)
  end
end
