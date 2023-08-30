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
        let(:user) { create(:user) } # Use FactoryBot to create a test user

        run_test! do
          expect(json['message']).to eq('Login successful.')
          expect(json['id']).to eq(user.id)
          expect(json['name']).to eq(user.name)
        end
      end

      response '422', 'invalid login' do
        let(:user) { create(:user) }
        let(:invalid_params) { { email: user.email, password: 'wrong-password' } }

        run_test!
      end
    end
  end
end
