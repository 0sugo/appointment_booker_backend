require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject {
    Doctor.new(
      name: 'Dr. Martins',
      specialisation: "Cardiology",
      city: "New York",
      price: 35,
      duration: "1 hour",
      image_url: "https://imgs.search.brave.com/x7KDn5c8BYG4iTpDarGeDg1CgX0fBZQiBmfvtW8WMPk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzcxLzlk/LzczLzcxOWQ3M2Vh/M2Q4NTllYWRhODI2/YjI1ZjcwOGM0YTFj/LmpwZw"
    )
  }

  before { subject.save }

  describe 'validations' do
    it 'should be valid' do
      expect(subject).to be_valid
    end
  end

  context 'Testing Associations' do
    it 'has_many users' do
      assoc = Doctor.reflect_on_association(:users)
      expect(assoc.macro).to eq :has_many
    end

    it 'has_many reservations' do
      assoc = Doctor.reflect_on_association(:reservations)
      expect(assoc.macro).to eq :has_many
    end
  end
end
