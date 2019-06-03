# frozen_string_literal: true

# Printer class to display the bank statment
class Printer
  def initialize(transaction)
    @transaction = transaction
    @statment = "date || credit || debit || balance\n"
  end

  def print_statement
    @transaction.transaction_log.reverse_each do |info|
      @statment += info[:date]
      amount = format('%.2f', info[:amount])
      balance = format('%.2f', info[:balance])

      if info[:type] == 'deposit'
        @statment += ' || ' + amount + ' || || '
      elsif info[:type] == 'withdraw'
        @statment += ' || || ' + amount + ' || '
      end
      @statment += balance + "\n"
    end
    @statment = @statment.chomp
  end
end
