# frozen_string_literal: true

require 'bank'

describe Bank do
  describe '#initialize' do
    it 'create an count' do
      expect(subject).to be_an_instance_of(Bank)
    end
  end
end
