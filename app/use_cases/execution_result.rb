class ExecutionResult
  attr_accessor :code, :result, :message

  def initialize(code, result = nil, message=nil)
    @code, @result, @message = code, result, message
  end

  def ok?
    @code = Rack::Utils.status_code(@code) if @code.is_a?(Symbol)
    @code < 400
  end
end