# frozen_string_literal: true

# Printer class to display the bank statement
class Printer
  def initialize(transaction)
    @transaction = transaction
    @statment = "date || credit || debit || balance\n"
  end

  def print_statement
    @transaction.transaction_log.reverse_each do |info|
      balance = format('%.2f', info[:balance])
      @statment += info[:date] + optional_row_part(info) + balance + "\n"
    end
    @statment = @statment.chomp
  end

  private

  def optional_row_part(info)
    optional_part = ''
    amount = format('%.2f', info[:amount])
    optional_part += ' || ' + amount + ' || || ' if info[:type] == 'deposit'
    optional_part += ' || || ' + amount + ' || ' if info[:type] == 'withdraw'
    optional_part
  end
end
