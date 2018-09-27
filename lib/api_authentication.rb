require 'api_authentication/configuration'
require 'api_authentication/engine'
require_relative './apidocs'
require 'apidocs'
require 'apidocs/session_docs'
# require 'validators'
require 'email_validator'

module ApiAuthentication
  autoload :EmailValidator, 'email_validator'

  API_AUTHENTICATION_SWAGGER_CLASSES = [
    ::ApiAuthentication::SessionDocs,
    ::ApiAuthentication::UnprocessableEntity
  ]

  def self.configure(&block)
    block.call configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end
end
