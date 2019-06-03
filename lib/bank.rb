# frozen_string_literal: true

# Bank class to instanciate bank account
class Bank
  attr_reader :balance

  def initialize
    @balance = 0.00
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    balance
  end
end
