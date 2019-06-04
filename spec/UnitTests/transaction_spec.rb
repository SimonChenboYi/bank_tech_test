# frozen_string_literal: true

require 'transaction'

describe Transaction do
  describe '#record_transaction' do
    it 'record the date of record_transaction' do
      subject.record_transaction('deposit', 100.00, 100.00)
      expect(subject.transaction_time).to eq Time.now.strftime('%d/%m/%Y')
    end

    it 'record date, transder and balaence after transaction' do
      subject.record_transaction('deposit', 100.00, 100.00)
      date = Time.now.strftime('%d/%m/%Y')
      expect(subject.transaction_info).to eq(date: date,
                                             type: 'deposit',
                                             amount: 100.00,
                                             balance: 100.00)
    end
  end

  describe '#transaction_log' do
    before :each do
      subject.record_transaction('deposit', 100.00, 100.00)
      @date = Time.now.strftime('%d/%m/%Y')
    end

    it 'log the dates of transers' do
      allow(Time).to receive(:now).and_return(Date.parse('03-06-2020'))
      subject.record_transaction('withdraw', 20.00, 80.00)
      expect(subject.transaction_log).to eq [{ date: @date,
                                               type: 'deposit',
                                               amount: 100.00,
                                               balance: 100.00 },
                                             { date: '03/06/2020',
                                               type: 'withdraw',
                                               amount: 20.00,
                                               balance: 80.00 }]
    end
  end
end
