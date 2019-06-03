# frozen_string_literal: true

require './lib/transaction'
require './lib/printer'

# Bank class to instanciate bank account
class Bank
  attr_reader :balance, :transaction, :printer

  def initialize(transaction = Transaction.new, printer_class = Printer)
    @balance = 0.00
    @transaction = transaction
    @printer = printer_class.new(@transaction)
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    @transaction.transfer('deposit', deposit_amount, balance)
    balance
  end

  def withdraw(withdrawal_amount)
    @balance -= withdrawal_amount
    @transaction.transfer('withdraw', withdrawal_amount, balance)
    balance
  end

  def print_bankstatement
    printer.print_statement
  end
end
