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

  def in_journey?
    @active
  end

  def touch_in
    @active = true
  end

  def touch_out
    @active = false
  end

end
