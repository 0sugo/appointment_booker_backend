require 'swagger_helper'

RSpec.describe 'api/v1/registrations', type: :request do
  path '/api/v1/users' do
    post 'Create a new user' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          email: { type: :string },
          password: { type: :string },
          password_confirmation: { type: :string }
        },
        required: %w[name email password password_confirmation]
      }

      response '201', 'user created' do
        let(:user) { attributes_for(:user) }

        run_test! do
          expect(json['name']).to eq(user[:name])
          expect(json['email']).to eq(user[:email])
        end
      end

      response '422', 'invalid request' do
        let(:user) { { name: '', email: 'invalid-email', password: '123456' } }

        run_test!
      end
    end
  end
end
