# frozen_string_literal: true

require 'account'

describe Account do
  let(:transaction_double) { double :transaction, record_transaction: 'record' }
  let(:printer_double) { double :printer, print_statement: 'bank statement' }
  let(:printer_class_double) { double :printer_class, new: printer_double }
  subject { Account.new(transaction_double, printer_class_double) }

  describe '#initialize' do
    it 'create an account' do
      expect(subject).to be_an_instance_of(Account)
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
      deposit_twice(subject)
      expect(subject.balance).to eq 70.50
    end

    it 'call the transaction record_transaction method when deposit' do
      expect(transaction_double).to receive(:record_transaction)
      subject.deposit(100.00)
    end
  end

  describe '#withdraw' do
    it 'decrease the balance from current balance' do
      deposit_then_withdraw(subject)
      expect(subject.balance).to eq 80.00
    end

    it 'call the transaction record_transaction method when withdraw' do
      subject.deposit(100.00)
      expect(transaction_double).to receive(:record_transaction)
      subject.withdraw(20.00)
    end
  end

  describe '#print_statment' do
    it 'print the bank statement' do
      expect(printer_double).to receive(:print_statement)
      subject.print_bankstatement
    end
  end
end
