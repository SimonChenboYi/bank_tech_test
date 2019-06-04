# frozen_string_literal: true

require 'account'

describe 'record transaction time' do
  let(:account) { Account.new }

  it 'log the transaction time when deposit' do
    account.deposit(100.00)
    date = Time.now.strftime('%d/%m/%Y')
    expect(account.transaction.transaction_time).to eq date
  end

  it 'log the transaction time when withdrawal' do
    deposit_then_withdraw(account)
    date = Time.now.strftime('%d/%m/%Y')
    expect(account.transaction.transaction_time).to eq date
  end
end
