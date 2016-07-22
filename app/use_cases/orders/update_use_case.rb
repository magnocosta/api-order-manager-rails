class Orders::UpdateUseCase < UseCaseBase

  def initialize(params={})
    @params = params
  end

  def execute
    report_result(:ok, terminal)
  end

end
