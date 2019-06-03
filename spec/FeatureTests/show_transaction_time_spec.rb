# frozen_string_literal: true

require 'bank'

describe 'withdraw' do
  let(:account) { Bank.new }

  xit 'log the transaction time when deposit' do
    account.deposit(100.00)
    date = Time.now.strftime('%m/%d/%Y')
    expect(account.transaction.time).to eq date
  end

  xit 'log the transaction time when withdrawal' do
    account.deposit(100.00)
    account.withdraw(20.00)
    date = Time.now.strftime('%m/%d/%Y')
    expect(account.transaction.time).to eq date
  end
end
