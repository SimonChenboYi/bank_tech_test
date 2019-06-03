# frozen_string_literal: true

require 'transaction'

describe Transaction do
  describe '#transfer' do
    it 'record the date of transfer' do
      subject.transfer
      expect(subject.transaction_time).to eq Time.now.strftime('%d/%m/%Y')
    end
  end

  describe '#transaction_log' do
    before :each do
      subject.transfer
      @date = Time.now.strftime('%d/%m/%Y')
    end

    it 'record the dates of transers' do
      allow(Time).to receive(:now).and_return(Date.parse('03-06-2020'))
      subject.transfer
      expect(subject.transaction_log).to eq [@date, '03/06/2020']
    end
  end
end
