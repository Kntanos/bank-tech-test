class Transactions

  @@list = []

  def self.deposit(date, amount)
    @@list.push({:date => date, :amount => amount})
  end

  def self.withdrawal(date, amount)
  end

  def self.list
    @@list
  end
end