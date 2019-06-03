# frozen_string_literal: true

require 'bank'

describe 'show bank balance' do
  account = Bank.new

  it 'show the account balance after account initialize' do
    expect(account.balance).to eq 0.00
  end
end
