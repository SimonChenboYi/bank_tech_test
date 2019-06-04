# frozen_string_literal: true

require 'account'

describe 'deposit' do
  let(:account) { Account.new }

  it 'increase the account balance by put deposit' do
    account.deposit(60.50)
    expect(account.balance).to eq 60.50
  end

  it 'increase the account balance by put deposit' do
    deposit_twice(account)
    expect(account.balance).to eq 70.50
  end
end
