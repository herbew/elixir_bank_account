# Elixir Bank Account with OTP(use asynchronous communication).

## Elixir/OTP and Process-oriented Programming
In Elixir/Erlang and OTP, the communication primitives are part of 
the virtual machine that executes the language. 
The ability to communicate between processes and 
between machines are built in and central to the language system. 
This emphasizes the importance of communication in this paradigm and 
in these language systems.

While the Elixir language is predominantly functional in 
terms of the logic expressed in the language, its use is process oriented.


## Case

Simulate a bank account supporting opening/closing, withdrawals, and 
deposits of money. Watch out for concurrent transactions!

A bank account can be accessed in multiple ways. 
Clients can make deposits and withdrawals using the internet, 
mobile phones, etc. Shops can charge against the account.

Create an account that can be accessed from multiple threads/processes 
(terminology depends on your programming language).

It should be possible to close an account; 
operations against a closed account must fail.

## mix test
xcluding tags: [:pending]

BankAccountTest [test/bankaccount_test.exs]
  * test 3. Reduce balance (excluded) [L#20]
  * test 4. Multiple account support (excluded) [L#27]
  * test 5. Close (excluded) [L#41]
  * test 2. Adding balance (excluded) [L#13]
  * test 1. Initial balance is 0 (1.9ms) [L#8]

Finished in 0.04 seconds (0.00s async, 0.04s sync)
5 tests, 0 failures, 4 excluded


## mix test --include pending
Including tags: [:pending]

BankAccountTest [test/bankaccount_test.exs]
  * test 1. Initial balance is 0 (2.6ms) [L#8]
  * test 3. Reduce balance (0.3ms) [L#20]
  * test 4. Multiple account support (0.04ms) [L#28]
  * test 5. Close (5.4ms) [L#42]
  * test 2. Adding balance (0.2ms) [L#13]

Finished in 0.04 seconds (0.00s async, 0.04s sync)

