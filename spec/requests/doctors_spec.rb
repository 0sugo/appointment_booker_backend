require 'rails_helper'

RSpec.describe 'Doctors', type: :request do
  describe 'Different path' do
    before(:all) do
        @user = User.create!(name: 'Jane mmdseooopoe', email: 'mjmasneed0po0oee@gmail.com', password: 'jane123')
       @doctor = Doctor.create!(
        name: "Dr. Cynthia",
        specialisation: "Dermatology",
        city: "Los Angeles",
        price: 35,
        duration: "1 hour",
        image_url: "https://imgs.search.brave.com/gE9wqwWKYiWML7-3FDxN3KoozlQRCL6_Ey22we6ef2A/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4u/Y3JlYXRlLnZpc3Rh/LmNvbS9hcGkvbWVk/aWEvc21hbGwvMjA0/MjUwMzEvc3RvY2st/cGhvdG8tZG9jdG9y.jpeg"
     )

     end


    it 'returns http success for doctors path' do
        get api_v1_doctors_path
      expect(response).to have_http_status(:success)
    end

    it 'returns http success for a particular doctor path' do
        get api_v1_doctor_path(@doctor)
      expect(response).to have_http_status(:success)
    end

end
end
