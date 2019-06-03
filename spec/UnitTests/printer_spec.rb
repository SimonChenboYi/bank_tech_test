# frozen_string_literal: true

require 'printer'

describe Printer do
  let(:transaction1) do
    double :transaction1, transaction_log: [{ date: '03/06/2019',
                                              type: 'deposit',
                                              balance: 100.00 }]
  end

  let(:transaction2) do
    double :transaction2, transaction_log: [{ date: '03/06/2019',
                                              type: 'deposit',
                                              balance: 100.00 },
                                            { date: '04/06/2020',
                                              type: 'withdraw',
                                              balance: 80.00 }]
  end

  describe '#print_statement' do
    xit 'print the transaction log' do
      printer = Printer.new(transaction1)
      expect(printer.print_statment).to eq(
        "date || credit || debit || balance\n
        03/06/2019 || 100.00 || || 100.00"
      )
    end

    xit 'print the transaction log in reverser order' do
      printer = Printer.new(transaction2)
      expect(printer.print_statment).to eq(
        "date || credit || debit || balance\n
        04/06/2019 || || 20.00 || 80.00\n
        03/06/2019 || 80.00 || || 100.00"
      )
    end
  end
end
