# frozen_string_literal: true

require 'account'

describe 'show bank balance' do
  let(:account) { Account.new }

  it 'show the account balance after account initialize' do
    expect(account.balance).to eq 0.00
  end
end
