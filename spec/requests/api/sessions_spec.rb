require 'swagger_helper'

RSpec.describe 'api/v1/sessions', type: :request do
  path '/api/v1/users/sign_in' do
    post 'Sign in a user' do
      tags 'Sessions'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[email password]
      }

      response '200', 'login successful' do
        run_test!
      end

      response '422', 'invalid login' do
        run_test!
      end
    end
  end
end
