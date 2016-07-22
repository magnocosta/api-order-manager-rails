require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Seleya
  class Application < Rails::Application
    VERSION = '0.0.1'

    config.active_record.raise_in_transactional_callbacks = true

    config.i18n.available_locales = [:en]

    config.i18n.default_locale = :en

    config.active_record.raise_in_transactional_callbacks = true

    config.colorize_logging = true

    config.log_tags = [
        lambda {|r| DateTime.now },
        lambda {|r| r.headers['Correlation-Id']}
    ]
  end
end
