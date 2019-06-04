# frozen_string_literal: true

require 'account'

describe 'create account' do
  let(:account) { Account.new }

  it 'initialize an account for user' do
    expect(account).to be_an_instance_of(Account)
  end
end
