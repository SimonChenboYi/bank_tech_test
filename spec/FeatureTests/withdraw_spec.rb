# frozen_string_literal: true

require 'account'

describe 'withdraw' do
  let(:account) { Account.new }

  it 'decrease the account balance by withdrawal' do
    account.deposit(100.00)
    account.withdraw(20.00)
    expect(account.balance).to eq 80.00
  end
end
