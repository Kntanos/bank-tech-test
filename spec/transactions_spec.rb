require './lib/transactions'

RSpec.describe Transactions do

  after(:each) do
    Transactions.list.clear
  end

  describe '#deposit' do
    it 'adds a deposit transaction to the list' do
      Transactions.deposit('10/01/2023', 1000)

      expect(Transactions.list.length).to eq(1)
    end
  end

  describe '#withdrawal' do
    it 'adds a withdrawal transaction to the list' do
      Transactions.withdrawal('11/01/2023', 500)

      expect(Transactions.list.length).to eq(1)
    end
  end
end