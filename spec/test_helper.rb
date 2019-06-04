# frozen_string_literal: true

def stub_time(target_time)
  allow(Time).to receive(:now).and_return(Date.parse(target_time))
  Time.now.strftime('%d/%m/%Y')
end

def deposit_twice(account)
  account.deposit(60.50)
  account.deposit(10.00)
end

def deposit_then_withdraw(account)
  account.deposit(100.00)
  account.withdraw(20.00)
end
