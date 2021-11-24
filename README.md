# Bank-Tech-Test

This is a tech test done on week 10 of the **Makers Software Development 12-week Bootcamp**.
The purpose was to demonstrate high quality code and review our own code so we can practice reflecting and improving.

#### Requirements
You should be able to interact with the code via IRB. No need to implement a command line interface that takes input from STDIN.

Deposits, withdrawal.
Account statement (date, amount, balance) printing.

Data can be kept in memory. No need for a database.

#### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see:
```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

##### Built with: Ruby
##### Tested with: Rsepc
##### Linter used: Rubocop

#### Installation
From the project's directory, run
```
$ bundle install
```
#### Interacting with the code in IRB
From the project's directory, start IRB and run:
```
> require './lib/bank_account'
```
example: 
```=ruby
irb(main):002:0> account = BankAccount.new
irb(main):003:0> account.make_deposit('12/01/2023', 3000)
irb(main):004:0> account.make_withdrawal('12/01/2023', 2000)
irb(main):005:0> account.request_statement
```

#### Tests
To run the tests, from the project's directory, run:
```
$ rspec
```
Test output is formatted with `simplecov` and `simplecov-console`.
