require 'rails_helper'

RSpec.describe Film, type: :model do
 let(:film) { Film.new(title: "Donnie Darko", description: "A fascinating mix of trippy noir imagery, teenage angst and Sci-Fi time travel.", url_slug: "donnie_darko", year: 2001) }

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
end