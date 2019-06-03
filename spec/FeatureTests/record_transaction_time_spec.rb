# frozen_string_literal: true

require 'bank'

describe 'record transaction time' do
  let(:account) { Bank.new }

  it 'log the transaction time when deposit' do
    account.deposit(100.00)
    date = Time.now.strftime('%d/%m/%Y')
    expect(account.transaction.transaction_time).to eq date
  end

  it 'log the transaction time when withdrawal' do
    account.deposit(100.00)
    account.withdraw(20.00)
    date = Time.now.strftime('%d/%m/%Y')
    expect(account.transaction.transaction_time).to eq date
  end
end
