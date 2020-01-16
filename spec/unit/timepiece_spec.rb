require 'timepiece'

describe Timepiece do
  describe '#bday_today?' do
    it 'returns true if birthday is today' do
      expect(Timepiece.new(nil, 16, 1).bday_today?).to eq true
    end
  end

  describe '#countdown' do
    it 'returns 1 day until next bday when tomorrow' do
      expect(Timepiece.new(nil, "17", "1").countdown).to eq 1
    end

    it 'returns 366 days until next bday when yesterday' do
      expect(Timepiece.new(nil, "15", "1").countdown).to eq 365
    end
    it 'returns 366 days until next bday when yesterday' do
      expect(Timepiece.new(nil, "2", "1").countdown).to eq 352
    end
  end
end