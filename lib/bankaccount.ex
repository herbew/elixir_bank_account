defmodule BankAccount do
	@moduledoc """
	A bank account that supports access from multiple processes.
	"""
	use Agent
	
	@typedoc """
	An account handle.
	"""
	@opaque account :: pid
	
	@doc """
	Open the bank. -> account available.
	"""
	@spec open() :: account
	def open() do
		{:ok, account} = Agent.start_link(fn -> 0 end)
		account
	end
	
	@doc """
	Close the bank. -> the account unavailable.
	"""
	@spec close(account) :: none
	def close(account) do
		case Process.alive?(account) do
			true -> Agent.stop(account)
			false -> {:error, :account_closed} 
		end
	end
	
	@doc """
	Get the account's balance.
	"""
	@spec balance(account) :: integer
	def balance(account) do
		case Process.alive?(account) do
			true -> Agent.get(account, & &1)
			false -> {:error, :account_closed} 
		end
	end
	
	@doc """
	Update the account's balance.
	"""
	@spec update(account, integer) :: any
	def update(account, amount) do
		case Process.alive?(account) do
			true -> Agent.update(account, &(&1 + amount))
			false -> {:error, :account_closed} 
		end
	end
end