require 'rails_helper'

RSpec.describe Film, type: :model do
 let(:film) { Film.create(title: "Donnie Darko", description: "A fascinating mix of trippy noir imagery, teenage angst and Sci-Fi time travel.", url_slug: "donnie_darko", year: 2001) }
 let!(:rating1) { Rating.create(value: 2, film: film) }
 let!(:rating2) { Rating.create(value: 3, film: film) }

  describe 'valid inputs' do
    it 'has a valid title' do
      expect(film.title).to eq("Donnie Darko")
    end
    it 'has a valid description' do
      expect(film.description).to eq("A fascinating mix of trippy noir imagery, teenage angst and Sci-Fi time travel.")
    end
    it 'has a valid url slug' do
      expect(film.url_slug).to eq("donnie_darko")
    end
    it 'has a valid year' do
      expect(film.year).to eq(2001)
    end
  end

  describe '#average_rating' do
    it 'gives an average rating' do
      expect(film.average_rating).to eq(2.5)
    end
  end
end