require 'http/parser'

require 'http/chainable'
require 'http/client'
require 'http/mime_type'
require 'http/options'
require 'http/request'
require 'http/request_stream'
require 'http/response'
require 'http/response_parser'
require 'http/uri_backport' if RUBY_VERSION < "1.9.0"
require 'http/version'

# HTTP should be easy
module HTTP
  extend Chainable

  # The method given was not understood
  class UnsupportedMethodError < ArgumentError; end

  class << self
    # Http[:accept => 'text/html'].get(...)
    alias_method :[], :with_headers
  end
end

Http = HTTP unless defined?(Http)
