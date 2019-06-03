# frozen_string_literal: true

# Printer class to display the bank statment
class Printer
  def initialize(transaction)
    @transaction = transaction
    @statment = "date || credit || debit || balance\n"
  end

  def print_statment
    @transaction.log.reverse_each do |info|
      @statment +=
      "#{info[:date]} ||  || debit || balance\n"
    end
  end
end
