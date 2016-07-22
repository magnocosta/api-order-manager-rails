class Orders::FindByIdUseCase < UseCaseBase

  def initialize(params={})
    @params = params
  end

  def execute
    id = @params[:id]
    order = Order.find_by_id!(id)
    report_result(:ok, order) 
  end

end
