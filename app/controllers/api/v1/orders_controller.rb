class API::V1::OrdersController < ApplicationController

  def index
    execution_result = Orders::ListUseCase.new(params).execute
    process_execution_result(execution_result)
  end

  def create
    execution_result = Orders::CreateUseCase.new(order_params).execute
    process_execution_result(execution_result)
  end

  def update
    execution_result = Orders::UpdateUseCase.new(order_params).execute
    process_execution_result(execution_result)
  end

  def show
    execution_result = Orders::FindByIdUseCase.new(params).execute
    process_execution_result(execution_result)
  end

  private

  def order_params
    params.permit(:number, :reference, :status, :notes, :price)
  end

end
