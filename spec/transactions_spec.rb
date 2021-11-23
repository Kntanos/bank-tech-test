require './lib/transactions'

RSpec.describe Transactions do

  describe '#deposit' do
    it 'adds a deposit transaction to the list' do
      Transactions.deposit('10/01/2023', 1000)

      expect(Transactions.list.length).to eq(1)
    end
  end
end