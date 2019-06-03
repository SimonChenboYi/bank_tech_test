# frozen_string_literal: true

require 'bank'

describe 'withdrawal' do
  let(:account) { Bank.new }

  it 'decrease the account balance by withdrawal' do
    account.deposit(100.00)
    accout.withdrawal(20.00)
    expect(account.balance).to eq 20.00
  end
end
