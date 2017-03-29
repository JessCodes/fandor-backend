require 'rails_helper'

RSpec.describe Rating, type: :model do
 let(:rating) { Rating.new(value: 5, film_id: 1) }

  describe 'valid inputs' do
    it 'has a valid value' do
     expect(rating.value).to eq(5)
    end
    it 'has a valid film id' do
      expect(rating.film_id).to eq(1)
    end
  end
end