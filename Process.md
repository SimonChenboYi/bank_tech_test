# User Stories.   
1. As a user
So I can manage my finance
I want to create an bank account from a bank

2. As a user
So I can manage my finance
I want to able to see my balance in my account

3. As a user
So I can manage my finance
I want to increase my balance by put deposit into my account

4. As a user
So I can manage my finance
I wan to see the right deduction of my balance after withdrawal

5. As a user
So I can manage my finance
I want to record the date of each transaction

6. As a user
So I can manage my finance
I want to record the information of the transaction (time, type, amount, balance)


7. As a user
So I can manage my finance
I want to print the bank statement with transaction history in reverse chronological order.


# Modelling Classes
*Using CRC Card to model the Classes*

* first version
![Image from iOS](https://user-images.githubusercontent.com/47269063/58797329-a7ca9a80-85f7-11e9-8ba8-f4ce39917d84.jpg)

* updated version
![Screenshot 2019-06-04 at 11 56 40](https://user-images.githubusercontent.com/47269063/58874140-e4fa5f80-86bf-11e9-8adf-73c067097eaf.png)

# Technical Approach

* Bank class is responsible of the behaviours regarding to account/balance
* Transaction class is responsible of record and log the transaction, and to be injected into Bank class and Print class
* Print class is responsible of display of bank statement and needs the input from transaction class and to be injected to Bank class


# Feature Tests
  ### Test Part 1 : run the tests in './spec/FeatureTests/

  ### Run the ```irb``` in terminal


*User Story 1*

```
2.6.0 :001 > require './lib/bank.rb'
 => true
2.6.0 :002 > account = Bank.new
 => #<Bank:0x00007fe6480f9d68>
2.6.0 :003 >
```

*User Story 2*
```
2.6.0 :001 > require './lib/bank.rb'
 => true
2.6.0 :002 > account = Bank.new
 => #<Bank:0x00007f8a938f9998 @balance=0.0>
2.6.0 :003 > account.balance
 => 0.0
2.6.0 :004 >
```

*User Story 3*
```
2.6.0 :001 > require './lib/bank.rb'
 => true
2.6.0 :002 > account = Bank.new
 => #<Bank:0x00007fdcb810d4b0 @balance=0.0>
2.6.0 :003 > account.deposit(100)
 => 100.0
2.6.0 :004 > account.deposit(32.15)
 => 132.15
```

*User Story 4*
```
2.6.0 :001 > require './lib/bank.rb'
 => true
2.6.0 :002 > account = Bank.new
 => #<Bank:0x00007fec8d925b40 @balance=0.0>
2.6.0 :003 > account.deposit(100.00)
 => 100.0
2.6.0 :004 > account.withdraw(20.00)
 => 80.0
```

*User Story 5*
```
2.6.0 :001 > require './lib/bank.rb'
 => true
2.6.0 :002 > account = Bank.new
 => #<Bank:0x00007fac840847a0 @balance=0.0, @transaction=#<Transaction:0x00007fac84084778 @transaction_time="", @transaction_log=[]>>

2.6.0 :003 > account.deposit(100.00)
 => 100.0
2.6.0 :004 > account.withdraw(20.00)
 => 80.0
2.6.0 :005 > account.transaction.transaction_log
 => ["03/06/2019", "03/06/2019"]
```

*User Story 6*
```
2.6.0 :001 > require './lib/bank.rb'
 => true
2.6.0 :002 > account = Bank.new
 => #<Bank:0x00007fc9ac91ab90 @balance=0.0, @transaction=#<Transaction:0x00007fc9ac91ab68 @transaction_time="", @transaction_log=[]>>

2.6.0 :003 > account.deposit(100.00)
 => 100.0
2.6.0 :004 > account.transaction.transaction_info
 => {:date=>"03/06/2019", :type=>"deposit", :balance=>100.0}
2.6.0 :005 > account.withdraw(20.00)
 => 80.0
2.6.0 :006 > account.transaction.transaction_info
 => {:date=>"03/06/2019", :type=>"withdraw", :balance=>80.0}
2.6.0 :007 > account.transaction.transaction_log

 => [{:date=>"03/06/2019", :type=>"deposit", :balance=>100.0}, {:date=>"03/06/2019", :type=>"withdraw", :balance=>80.0}]
```

*User Story 7*
```
2.6.0 :001 > require './lib/bank.rb'
 => true

2.6.0 :002 > account = Bank.new
 => #<Bank:0x00007fcb3b848d08 @balance=0.0, @transaction=#<Transaction:0x00007fcb3b848cb8 @transaction_time="", @transaction_log=[]>,
 @printer=#<Printer:0x00007fcb3b848c68 @transaction=#<Transaction:0x00007fcb3b848cb8 @transaction_time="", @transaction_log=[]>, @sta
tment="date || credit || debit || balance\n">>
2.6.0 :003 > account.deposit(100.00)
 => 100.0
2.6.0 :004 > account.deposit(200.00)
 => 300.0
2.6.0 :005 > account.withdraw(20.00)
 => 280.0
2.6.0 :006 > statement = account.print_bankstatement
 => "date || credit || debit || balance\n03/06/2019 || || 20.00 || 280.00\n03/06/2019 || 200.00 || || 300.00\n03/06/2019 || 100.00 ||
 || 100.00"
2.6.0 :007 > print statement
date || credit || debit || balance
03/06/2019 || || 20.00 || 280.00
03/06/2019 || 200.00 || || 300.00
03/06/2019 || 100.00 || || 100.00 => nil
```
