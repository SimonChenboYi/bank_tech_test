# frozen_string_literal: true

# Transaction class to log the transactions
class Transaction
  attr_reader :transaction_time, :transaction_log, :transaction_info

  def initialize
    @transaction_time = ''
    @transaction_log = []
  end

  def transfer(transaction_type, balaence)
    @transaction_time = Time.now.strftime('%d/%m/%Y')
    @transaction_info = { date: @transaction_time,
                          type: transaction_type,
                          balance: balaence }

    @transaction_log.push(@transaction_info)
  end
end
