class Oystercard

  LIMIT = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(money)
    fail 'Exceeded limit' if money + balance > LIMIT
    @balance += money
  end
end
