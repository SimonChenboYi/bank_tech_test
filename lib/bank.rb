# frozen_string_literal: true

require './lib/transaction'

# Bank class to instanciate bank account
class Bank
  attr_reader :balance, :transaction

  def initialize(transaction = Transaction.new)
    @balance = 0.00
    @transaction = transaction
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    @transaction.transfer('deposit', balance)
    balance
  end

  def withdraw(withdrawal_amount)
    @balance -= withdrawal_amount
    @transaction.transfer('withdraw', balance)
    balance
  end
end
