# frozen_string_literal: true

require 'bank'

feature 'create account' do
  account = Bank.new

  it 'initialize an account for user' do
    expect(account).to be_an_instance_of(Bank)
  end
end
