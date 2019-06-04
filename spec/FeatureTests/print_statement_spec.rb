# frozen_string_literal: true

require 'account'

describe 'print the Bank Statment' do
  let(:account) { Account.new }

  it 'print the bank statment with transaction history in reverse order' do
    date = Time.now.strftime('%d/%m/%Y')
    account.deposit(100.00)
    account.withdraw(20.00)
    expect(account.print_bankstatement).to eq(
      "date || credit || debit || balance\n#{date} || || 20.00 || 80.00\n#{date} || 100.00 || || 100.00")
  end

  it 'print the bank statment with transaction on different days' do
    allow(Time).to receive(:now).and_return(Date.parse('10-01-2012'))
    date1 = Time.now.strftime('%d/%m/%Y')
    account.deposit(1000.00)
    allow(Time).to receive(:now).and_return(Date.parse('13-01-2012'))
    date2 = Time.now.strftime('%d/%m/%Y')
    account.deposit(2000.00)
    allow(Time).to receive(:now).and_return(Date.parse('14-01-2012'))
    date3 = Time.now.strftime('%d/%m/%Y')
    account.withdraw(500.00)
    expect(account.print_bankstatement).to eq(
    "date || credit || debit || balance\n#{date3} || || 500.00 || 2500.00\n" +
    "#{date2} || 2000.00 || || 3000.00\n#{date1} || 1000.00 || || 1000.00")
  end
end
