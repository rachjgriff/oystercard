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
end
