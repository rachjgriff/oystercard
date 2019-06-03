require 'oystercard'

describe Oystercard do

  it 'test if balance is zero?' do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up' do

    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'tops up oystercard' do
        expect{ subject.top_up 10 }.to change{ subject.balance }. by 10
    end

    it 'raises an error if balance exceeds limit (£90)' do
      limit = Oystercard::LIMIT
      subject.top_up(limit)
      expect{ subject.top_up 1 }.to raise_error 'Exceeded limit'
    end
  end

  describe '#deduct' do

    it { is_expected.to respond_to(:deduct).with(1). argument }

    it 'deducts fare from oystercard balance' do
      subject.top_up(20)
      expect{ subject.deduct 5 }.to change{subject.balance }. by -5
    end
  end


  describe '#in_journey?' do

    it 'oystercard is not in_journey' do
      expect(subject).to_not be_in_journey
    end

    it 'oystercard can touch_in' do
      subject.touch_in
      expect(subject).to be_in_journey
    end

    it 'oystercard can touch-out' do
      subject.touch_in
      subject.touch_out
      expect(subject).to_not be_in_journey
    end
  end
end
