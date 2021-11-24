# frozen_string_literal: true

class Transactions
  DEFAULT_BALANCE = 0

  @@list = []
  @@balance = DEFAULT_BALANCE

  def self.deposit(date, amount)
    @@list.push({ date: date, amount: amount, new_balance: @@balance + amount })
    balance_update(amount)
  end

  def self.withdrawal(date, amount)
    @@list.push({ date: date, amount: -amount.abs, new_balance: @@balance - amount.abs })
    balance_update(amount)
  end

  def self.balance_update(amount)
    amount.positive? ? @@balance += amount : @@balance -= amount.abs
  end

  def self.list
    @@list
  end
end
