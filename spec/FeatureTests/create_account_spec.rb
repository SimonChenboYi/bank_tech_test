# frozen_string_literal: true

require 'bank'

describe 'create account' do
  account = Bank.new

  xit 'initialize an account for user' do
    expect(account).to be_an_instance_of(Bank)
  end
end
