# frozen_string_literal: true

require 'bank'

describe Bank do
  describe '#initialize' do
    it 'create an count' do
      expect(subject).to be_an_instance_of(Bank)
    end
  end

  describe '#balance' do
    it 'get the balance of the account' do
      expect(subject.balance).to eq 0.00
    end
  end
end
