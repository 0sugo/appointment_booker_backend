require 'swagger_helper'

RSpec.describe 'api/doctors', type: :request do
  path '/api/v1/doctors' do
    get 'Retrieves a list of doctors' do
      tags 'Doctors'
      produces 'application/json'

      # Define parameters here
      parameter name: :Name, in: :query, type: :string, description: 'Filter doctors by name'
      parameter name: :city, in: :query, type: :string, description: 'Filter doctors by city'
      parameter name: :specialisation, in: :query, type: :string, description: 'Filter doctors by specialisation'
      parameter name: :price, in: :query, type: :integer, description: 'Filter doctors by price'
      parameter name: :duration, in: :query, type: :string, description: 'Filter doctors by duration'

      parameter name: :image_url, in: :query, type: :string, description: 'Filter doctors by image_url'

      response '200', 'doctors found' do
        schema type: :array,
               items: {
                 properties: {
                   id: { type: :integer },
                   name: { type: :string },
                   specialisation: { type: :string },
                   city: { type: :string },
                   price: { type: :integer },
                   duration: { type: :string },
                   image_url: { type: :string }
                   # Include other properties of the Doctor model here
                 }
               }

        run_test!
      end
    end
  end
end
