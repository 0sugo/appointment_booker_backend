require 'rails_helper'

RSpec.describe 'Doctors', type: :request do
  describe 'Different path' do
    before(:all) do
        @user = User.create!(name: 'Jane mssmswseooopoe', email: 'wmssjsmasnee0po0oee@gmail.com', password: 'jane123')
       @doctor = Doctor.create!(
        name: "Dr. Joseck",
      specialisation: "Pediatrics",
      city: "Chicago",
      price: 25,
      duration: "1 hour",
      image_url: "https://imgs.search.brave.com/J-sLIbrjqQWZj-2JAPwVVDH1gpgh3OLiswelAdo38iw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9k/b2N0b3Itc3RhbmRp/bmctd2l0aC1mb2xk/ZXItc3RldGhvc2Nv/cGVfMTI5MS0xNi5q/cGc_c2l6ZT02MjYm/ZXh0PWpwZw"
     )

          @reservation = Reservation.create!(user: @user, doctor: @doctor)

    end


    it 'returns http success for all user reservations' do
        get api_v1_user_reservations_path(@user)
      expect(response).to have_http_status(:success)
    end

    it 'returns http success for a particular reservation path' do
        delete api_v1_user_reservation_path(@user, @reservation)
      expect(response).to have_http_status(:success)
    end

end
end
