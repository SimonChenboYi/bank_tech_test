# frozen_string_literal: true

# Transaction class to  record/log the transactions
class Transaction
  attr_reader :transaction_time, :transaction_log, :transaction_info

  def initialize
    @transaction_log = []
  end

  def record_transaction(transaction_type, amount, balaence)
    @transaction_time = Time.now.strftime('%d/%m/%Y')
    @transaction_info = { date: @transaction_time, type: transaction_type,
                          amount: amount, balance: balaence }
    @transaction_log.push(@transaction_info)
  end
end
