# frozen_string_literal: true

class Transactions
  @@list = []
  @@balance = 0

  def self.deposit(date, amount)
    @@list.push({ date: date, amount: amount, new_balance: @@balance + amount })
    @@balance += amount
  end

  def self.withdrawal(date, amount)
    @@list.push({ date: date, amount: -amount.abs, new_balance: @@balance - amount.abs })
    @@balance -= amount.abs
  end

  def self.list
    @@list
  end
end
