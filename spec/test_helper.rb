# frozen_string_literal: true

def stub_time(target_time)
  allow(Time).to receive(:now).and_return(Date.parse(target_time))
  Time.now.strftime('%d/%m/%Y')
end
