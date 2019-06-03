# frozen_string_literal: true

require 'bank'

describe 'deposit' do
  account = Bank.new

  it 'increase the account balance by put deposit' do
    subject.deposit(60.50)
    expect(account.balance).to eq 60.50
  end

  it 'increase the account balance by put deposit' do
    subject.deposit(60.50)
    subject.deposit(10.00)
    expect(account.balance).to eq 70.50
  end
end
