defmodule BankAccountTest do
  	use ExUnit.Case
	setup do
		account = BankAccount.open()
		{:ok, account: account}
	end
	
	test "1. Initial balance is 0", %{account: account} do
    	assert BankAccount.balance(account) == 0
  	end #test "1. Initial balance is 0", %{account: account} do
	
	@tag :pending
	test "2. Adding balance", %{account: account} do
		  assert BankAccount.balance(account) == 0
		  BankAccount.update(account, 100)
		  assert BankAccount.balance(account) == 100
	end #test "2. Adding balance", %{account: account} do
	
	@tag :pending
	test "3. Reduce balance", %{account: account} do
	      BankAccount.update(account, 100)
		  assert BankAccount.balance(account) == 100
		  BankAccount.update(account, -20)
		  assert BankAccount.balance(account) == 80
	end #test "3. Reduce balance", %{account: account} do
	
	@tag :pending
	test "4. Multiple account support", %{account: account} do
		assert is_pid(account)
		
		account1 = BankAccount.open()
		assert is_pid(account1)
		
		assert account != account1
		
		BankAccount.update(account, 80)
		assert BankAccount.balance(account) != BankAccount.balance(account1)
	end #test "4. Multiple account support", %{account: account} do
	
	
	@tag :pending
	test "5. Close", %{account: account} do
		  BankAccount.close(account)
		  assert BankAccount.balance(account) == {:error, :account_closed}
	end #test "5. Close", %{account: account} do
	
end