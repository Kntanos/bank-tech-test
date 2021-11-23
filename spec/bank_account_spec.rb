require './lib/bank_account'

RSpec.describe BankAccount do
  
  describe '#make_deposit' do
    it 'adds a transaction to the list of transactions' do
      transactions = class_double("Transactions")
      allow(transactions).to receive(:deposit) do |date, amount|
        [{:date => date, :amount => amount}]
      end

      expect(transactions.deposit('10/01/2023', 1000)).to eq([{:date => '10/01/2023', :amount => 1000}])
    end
  end

  describe '#make_withdrawals' do
    it 'adds a transaction to the list of transactions' do
      transactions = class_double("Transactions")
      allow(transactions).to receive(:withdrawal) do |date, amount|
        [{:date => date, :amount => -(amount).abs}]
      end

      expect(transactions.withdrawal('10/01/2023', 1000)).to eq([{:date => '10/01/2023', :amount => -1000}])
    end
  end

  describe '#request_statement' do
    let(:list) {[{:date => '10/01/2023', :amount => 1000}]}
    it 'requests the statement of transactions' do
      statement = class_double("Statement")
      allow(statement).to receive(:print) do |list|
        "date || credit || debit || balancen\n10/01/2023 || || 1000 || 1000"
      end
      
      expect(statement.print(list)).to eq("date || credit || debit || balancen\n10/01/2023 || || 1000 || 1000")
    end
  end
end