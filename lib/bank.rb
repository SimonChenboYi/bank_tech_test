# frozen_string_literal: true

# Bank class to instanciate bank account
class Bank
  attr_reader :balance

  def initialize
    @balance = 0.00
  end
end
