class Transactions

  @@list = []

  def self.deposit(date, amount)
    @@list.push({:date => date, :amount => amount})
  end

  def self.withdrawal(date, amount)
    @@list.push({:date => date, :amount => -(amount).abs})
  end

  def self.list
    @@list
  end
end