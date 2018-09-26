# frozen_string_literal: true

class ApiAuthentication::UnprocessableEntity
  include Swagger::Blocks

  swagger_schema :UnprocessableEntity do
    property :errors do
      key :type, :array
      items do
        key :type, :string
      end
    end
  end
end
