class ApplicationController < ActionController::API
  include ::ActionController::Serialization
  # before_action :ensure_headers, :ensure_params_headers

  #rescue_from StandardError,                 with: :handle_exception
  #rescue_from ActiveRecord::RecordNotFound , with: :handle_record_not_found_exception

  protected

  APPLICATION_ID_HEADER_NAME      = 'Application-Id'
  CONTENT_TYPE_HEADER_NAME        = 'Content-Type'
  MERCHANT_ID                     = 'Merchant-Id'

  REQUIRED_HEADER_NAMES = []

  def copy_headers
    headers = {}
    REQUIRED_HEADER_NAMES.each do |header|
      headers[header]=request.headers[header]
    end
    headers
  end

  private

  def ensure_params_headers
    params[:merchant_id] = copy_headers[MERCHANT_ID]
  end

  def ensure_headers
    errors = {}
    REQUIRED_HEADER_NAMES.map do |header|
      error = ensure_header(header)
      errors[header]=[error] unless error.nil?
    end

    render json: ErrorSerializer.serialize(errors), status: :unprocessable_entity unless errors.empty?
  end

  def ensure_header(header)
    unless request.headers[header].present?
      I18n.t 'errors.messages.header_not_found', attribute: header
    end
  end

  def handle_record_not_found_exception
    render nothing: true, status: :not_found
  end

  def handle_exception
    render nothing: true, status: :internal_server_error
  end

  def process_execution_result(execution_result)
    if execution_result.ok?
      render json: execution_result.result, status: execution_result.code
    else
      unless execution_result.message.nil?
        render json: execution_result.message, status: execution_result.code
      else
        render nothing: true, status: execution_result.code
      end
    end
  end
end
