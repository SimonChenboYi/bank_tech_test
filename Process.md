# User Stories.   
1. As a user
So I can manage my finance
I want to create an bank account from a bank

2. As a user
So I can manage my finance
I want to able to see my balance in my account

3. As a user
So I can manage my finance
I want to increase my balance by put deposit in to my account

4. As a user
So I can manage my finance
I wan to see the right deduction of my balance by withdrawal

5. As a user
So I can manage my finance
I want to record the date of each transition

6. As a user
So I can manage my finance
I want to record the type of the transition (deposit or withdrawal)

7. As a user
So I can manage my finance
I want to print the bank statement with transaction history in reverse chronological order.


# Modelling Classes
*Using CRC Card to model the Classes*


![Image from iOS](https://user-images.githubusercontent.com/47269063/58797329-a7ca9a80-85f7-11e9-8ba8-f4ce39917d84.jpg)

# Feature Tests
  ### Test Part 1 : run the tests in './spec/FeatureTests'

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
