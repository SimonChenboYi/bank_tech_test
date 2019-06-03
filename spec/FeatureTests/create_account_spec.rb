# frozen_string_literal: true

require 'bank'

describe 'create account' do
  let(:account) { Bank.new }

  it 'initialize an account for user' do
    expect(account).to be_an_instance_of(Bank)
  end
end
