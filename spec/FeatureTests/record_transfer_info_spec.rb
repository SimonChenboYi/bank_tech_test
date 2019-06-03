# frozen_string_literal: true

require 'bank'

describe 'record transaction info' do
  let(:account) { Bank.new }

  xit 'log the transaction info when deposit' do
    account.deposit(100.00)
    date = Time.now.strftime('%d/%m/%Y')
    expect(account.transaction.info).to eq(date: date,
                                           type: 'deposit',
                                           balance: 100.00)
  end

  xit 'log the transaction info when withdrawal' do
    account.deposit(100.00)
    account.withdraw(20.00)
    date = Time.now.strftime('%d/%m/%Y')
    expect(account.transaction.transaction.info).to eq eq(date: date,
                                                          type: 'withdraw',
                                                          balance: 80.00)
  end
end
