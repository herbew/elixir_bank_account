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

## mix test --include pending