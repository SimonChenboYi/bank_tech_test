# Bank Tech Test

## Context
This is tech test of a bank application allowing user to deposit, withdraw, and print bank statement. More details  of the tech test requirements are in Requirement.md.


## Install
Git clone the application into your local machine and navigate into the bank_tech_test repository

run bundle to install the dependencies.

```
$ bundle
```

## Run Test

The Unit tests and Feature tests are conducted in the Rspec. The test files are in *spec* folder.
REPL (irb) is used to also conduct feature test the development, more details in Process.md

To run the test, navigate to the application repository and  run

```
$ rspec
```

## Run Application

In the terminal, navigate to the application repository and open REPL by

```
$ irb
```

require the account.rb in irb

```
> require './lib/account.rb'
```

Instantiate an account instance

```
> account = Account.new
```

put deposit in the account

```
account.deposit(200.00)
```

withdraw cash from the account

```
account.withdraw(20.00)
```

generate and print the bankstatement

```
statement = account.print_bankstatement
```

```
print statement
```

## Approach
Agile programming is adopted in the development. Based on the requirements form client, user stories are generated. All user stories are developed by TDD and both unit and feature tested. the test coverage is 100% assessed by simplecov. The unit tests of each classes are isolated with other classes by stubbing and mocking.

The acceptance criteria example from the requirements (more details in Requirement.md ) is feature tested in  './spec/print_statement_spec.rb'

### User Stories.   
1. As a user.    
So I can manage my finance.    
I want to create an bank account from a bank.    

2. As a user.  
So I can manage my finance.  
I want to able to see my balance in my account.  

3. As a user.
So I can manage my finance.
I want to increase my balance by put deposit into my account.

4. As a user.  
So I can manage my finance.  
I wan to see the right deduction of my balance after withdrawal.  

5. As a user.  
So I can manage my finance.  
I want to record the date of each transaction.  

6. As a user.  
So I can manage my finance.  
I want to record the information of each transaction (time, type, amount, balance).  

7. As a user.  
So I can manage my finance.  
I want to print the bank statement with transaction history in reverse chronological order.  


### CRC

CRC is used to model the classes and their relation:

![Screenshot 2019-06-04 at 11 56 40](https://user-images.githubusercontent.com/47269063/58874140-e4fa5f80-86bf-11e9-8adf-73c067097eaf.png)

* Account class to instantiate bank account to conduct transactions
* Transaction class to  record/log the transactions
* Printer class to generate/display the bank statement

## Screenshot of Running the Application
<img width="1036" alt="Screenshot 2019-06-04 at 12 31 08" src="https://user-images.githubusercontent.com/47269063/58875990-c9de1e80-86c4-11e9-980f-2d6dfa06d67b.png">
