# frozen_string_literal: true

require 'printer'

describe Printer do
  let(:transaction1) do
    double :transaction1, transaction_log: [{ date: '03/06/2019',
                                              type: 'deposit',
                                              amount: 100.00,
                                              balance: 100.00 }]
  end

  let(:transaction2) do
    double :transaction2, transaction_log: [{ date: '03/06/2019',
                                              type: 'deposit',
                                              amount: 100.00,
                                              balance: 100.00 },
                                            { date: '04/06/2019',
                                              type: 'withdraw',
                                              amount: 20.00,
                                              balance: 80.00 }]
  end

  describe '#print_statement' do
    it 'print the transaction log' do
      printer = Printer.new(transaction1)
      expect(printer.print_statement).to eq(
        "date || credit || debit || balance\n03/06/2019 || 100.00 || || 100.00"
      )
    end

    it 'print the transaction log in reverser order' do
      printer = Printer.new(transaction2)
      expect(printer.print_statement).to eq(
        "date || credit || debit || balance\n04/06/2019 || || 20.00 || 80.00\n03/06/2019 || 100.00 || || 100.00"
      )
    end
  end
end
