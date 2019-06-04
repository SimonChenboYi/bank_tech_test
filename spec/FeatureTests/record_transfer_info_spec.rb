# frozen_string_literal: true

require 'account'

describe 'record transaction info' do
  let(:account) { Account.new }

  it 'record the transaction info when deposit' do
    account.deposit(100.00)
    date = Time.now.strftime('%d/%m/%Y')
    expect(account.transaction.transaction_info).to eq(date: date,
                                                       type: 'deposit',
                                                       amount: 100.00,
                                                       balance: 100.00)
  end

  it 'record the transaction info when withdrawal' do
    deposit_then_withdraw(account)
    date = Time.now.strftime('%d/%m/%Y')
    expect(account.transaction.transaction_info).to eq(date: date,
                                                       type: 'withdraw',
                                                       amount: 20.00,
                                                       balance: 80.00)
  end
end
