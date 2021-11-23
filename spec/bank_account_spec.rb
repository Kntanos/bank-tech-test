require './lib/bank_account'

RSpec.describe BankAccount do
  
  before(:all) do
    @account = BankAccount.new
  end

  describe '#make_deposit' do
    it 'adds a transaction to the list of transactions' do
      transactions = class_double("Transactions")
      allow(transactions).to receive(:deposit) do |date, amount|
        [{:date => date, :amount => amount}]
      end

      expect(transactions.deposit('10/01/2023', 1000)).to eq([{:date => '10/01/2023', :amount => 1000}])
    end
  end
end