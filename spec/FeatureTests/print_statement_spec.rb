# frozen_string_literal: true

require 'account'

describe 'print the Bank Statment' do
  let(:account) { Account.new }

  it 'print the bank statment with transaction history in reverse order' do
    date = Time.now.strftime('%d/%m/%Y')
    deposit_then_withdraw(account)
    expect(account.print_bankstatement).to eq(
      "date || credit || debit || balance\n#{date} || || 20.00 || 80.00\n" \
      "#{date} || 100.00 || || 100.00"
    )
  end

  it 'print the bank statment with transaction on different days' do
    date1 = stub_time('10-01-2012')
    account.deposit(1000.00)
    date2 = stub_time('13-01-2012')
    account.deposit(2000.00)
    date3 = stub_time('14-01-2012')
    account.withdraw(500.00)
    expect(account.print_bankstatement).to eq(
      "date || credit || debit || balance\n#{date3} || || 500.00 || 2500.00\n" \
      "#{date2} || 2000.00 || || 3000.00\n#{date1} || 1000.00 || || 1000.00"
    )
  end
end
