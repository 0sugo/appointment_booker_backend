require 'swagger_helper'

RSpec.describe 'api/doctors', type: :request do
  path '/api/v1/doctors' do
    get 'Retrieves a list of doctors' do
      tags 'Doctors'
      produces 'application/json'

      # Define parameters here
      parameter name: :city, in: :query, type: :string, description: 'Filter doctors by city'
      parameter name: :specialisation, in: :query, type: :string, description: 'Filter doctors by specialisation'

      response '200', 'doctors found' do
        schema type: :array,
               items: {
                 properties: {
                   id: { type: :integer },
                   name: { type: :string },
                   specialisation: { type: :string },
                   city: { type: :string },
                   # Include other properties of the Doctor model here
                 },
               }

        run_test!
      end
    end
  end
end
