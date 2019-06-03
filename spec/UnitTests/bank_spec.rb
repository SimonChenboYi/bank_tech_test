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

  describe '#deposit' do
    it 'can deposit after creating account' do
      subject.deposit(20.50)
      expect(subject.balance).to eq 20.50
    end

    it 'increase the balance on top existing balance' do
      subject.deposit(20.50)
      subject.deposit(10.50)
      expect(subject.balance).to eq 31.00
    end
  end

  describe '#withdraw' do
    it 'decrease the balance from current balance' do
      subject.deposit(100.00)
      subject.withdraw(20.00)
      expect(subject.balance).to eq 80.00
    end
  end
end
