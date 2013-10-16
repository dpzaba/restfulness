
require 'uri'
require 'multi_json'
require 'mono_logger'
require 'active_support/core_ext'
require 'active_support/dependencies'
require 'rack/utils'
require 'rack/showexceptions'
require 'rack/builder'


require "restfulness/resources/events"

require "restfulness/application"
require "restfulness/dispatcher"
require "restfulness/exceptions"
require "restfulness/path"
require "restfulness/request"
require "restfulness/resource"
require "restfulness/response"
require "restfulness/route"
require "restfulness/router"
require "restfulness/statuses"
require "restfulness/version"

require "restfulness/dispatchers/rack"

require "restfulness/log_formatters/quiet_formatter"
require "restfulness/log_formatters/verbose_formatter"

module Restfulness
  extend self

  attr_accessor :logger
end

Restfulness.logger = MonoLogger.new(STDOUT)
Restfulness.logger.formatter = Restfulness::VerboseFormatter.new

