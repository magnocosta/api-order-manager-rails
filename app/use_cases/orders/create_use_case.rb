class Orders::CreateUseCase < UseCaseBase

  def initialize(params={})
    @params = params
  end

  def execute
    order = Order.new(@params)
    if order.save
      report_result(:created, order)
    else
      report_error_as(:bad_request, order.errors)
    end
  end

end
