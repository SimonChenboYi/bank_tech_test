# frozen_string_literal: true

require 'transaction'

describe Transaction do
  describe '#transfer' do
    it 'record the date of transfer' do
      subject.transfer('deposit', 100.00)
      expect(subject.transaction_time).to eq Time.now.strftime('%d/%m/%Y')
    end

    it 'record date, transder and balaence after transaction' do
      subject.transfer('deposit', 100.00)
      date = Time.now.strftime('%d/%m/%Y')
      expect(subject.transaction_info).to eq(date: date,
                                             type: 'deposit',
                                             balance: 100.00)
    end
  end

  describe '#transaction_log' do
    before :each do
      subject.transfer('deposit', 100.00)
      @date = Time.now.strftime('%d/%m/%Y')
    end

    it 'log the dates of transers' do
      allow(Time).to receive(:now).and_return(Date.parse('03-06-2020'))
      subject.transfer('withdraw', 80.00)
      expect(subject.transaction_log).to eq [{ date: @date,
                                               type: 'deposit',
                                               balance: 100.00 },
                                             { date: '03/06/2020',
                                               type: 'withdraw',
                                               balance: 80.00 }]
    end
  end
end
