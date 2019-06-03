class Oystercard

  LIMIT = 90

  attr_reader :balance, :active

  def initialize
    @active = false
    @balance = 0
  end

  def top_up(money)
    fail 'Exceeded limit' if money + balance > LIMIT
    @balance += money
  end

  def deduct(fare)
    @balance -= fare
  end

  def touch_in
  end

  def touch_out
  end

  def in_journey?
  end

end
