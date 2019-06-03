# frozen_string_literal: true

require 'bank'

describe 'deposit' do
  let(:account) { Bank.new }

  it 'increase the account balance by put deposit' do
    account.deposit(60.50)
    expect(account.balance).to eq 60.50
  end

  it 'increase the account balance by put deposit' do
    account.deposit(60.50)
    account.deposit(10.00)
    expect(account.balance).to eq 70.50
  end
end
