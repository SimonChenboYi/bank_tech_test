# frozen_string_literal: true

# Transaction class to log the transactions
class Transaction
  attr_reader :transaction_time, :transaction_log

  def initialize
    @transaction_time = ''
    @transaction_log = []
  end

  def transfer
    @transaction_time = Time.now.strftime('%d/%m/%Y')
    @transaction_log.push(transaction_time)
  end
end
