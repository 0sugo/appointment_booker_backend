require 'rails_helper'

RSpec.describe Reservation, type: :model do
    before(:all) do
        @user = User.create!(name: 'Jane Doopoe', email: 'janed0pooe@gmail.com', password: 'jane123')
       @doctor = Doctor.create!(
            name: 'Dr. Martins', 
            specialisation: "Cardiology",
            city: "New York",
            price: 35,
            duration: "1 hour",
            image_url: "https://imgs.search.brave.com/x7KDn5c8BYG4iTpDarGeDg1CgX0fBZQiBmfvtW8WMPk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzcxLzlk/LzczLzcxOWQ3M2Vh/M2Q4NTllYWRhODI2/YjI1ZjcwOGM0YTFj/LmpwZw"
          )

          @reservation = Reservation.create!(user: @user, doctor: @doctor)
    end


  describe 'validations' do
    it 'should be valid' do
      expect(@reservation).to be_valid
    end
  end

  context 'Testing Associations' do
    it 'belongs to users' do
      assoc = Reservation.reflect_on_association(:user)
      expect(assoc.macro).to eq :belongs_to
    end

    it 'belongs to doctor' do
      assoc = Reservation.reflect_on_association(:doctor)
      expect(assoc.macro).to eq :belongs_to
    end
  end
end
