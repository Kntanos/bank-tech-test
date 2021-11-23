# frozen_string_literal: true

require_relative 'transactions'
require_relative 'statement'

class BankAccount
  attr_reader :transactions, :statement

  def initialize(transactions = Transactions, statement = Statement)
    @transactions = transactions
    @statement = statement
  end

  def make_deposit(date, amount)
    transactions.deposit(date, amount)
  end

  def make_withdrawal(date, amount)
    transactions.withdrawal(date, amount)
  end

  def request_statement
    statement.print(transactions.list)
  end
end
