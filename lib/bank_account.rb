require_relative 'transactions'

class BankAccount

  attr_reader :transactions

  def initialize(transactions = Transactions)
    @transactions = transactions
  end

  def make_deposit(date, amount)
    transactions.deposit(date, amount)
  end
end