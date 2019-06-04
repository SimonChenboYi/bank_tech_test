# frozen_string_literal: true

require 'account'

describe 'withdraw' do
  let(:account) { Account.new }

  it 'decrease the account balance by withdrawal' do
    deposit_then_withdraw(account)
    expect(account.balance).to eq 80.00
  end
end
