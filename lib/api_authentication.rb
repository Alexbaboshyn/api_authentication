require 'api_authentication/configuration'
require 'api_authentication/engine'
require 'apidocs/session_docs'
# require 'validators'
require 'email_validator'

module ApiAuthentication
  autoload :EmailValidator, 'email_validator'

  SWAGGER_CLASSES = [
    ::ApiAuthentication::SessionDocs
  ]

  def self.configure(&block)
    block.call configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end
end
