class UseCaseBase

  def report_result(code, result="")
    execution_result = create_result(code)
    execution_result.result = result
    execution_result
  end

  def report_error_as(code, message="")
    result = create_result(code)
    unless message.nil?
      result.message = message
    end
    result
  end

  private

  def create_result(code)
    ExecutionResult.new(code)
  end
end

