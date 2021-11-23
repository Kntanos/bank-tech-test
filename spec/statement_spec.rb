# frozen_string_literal: true

require './lib/statement'

RSpec.describe Statement do
  describe '#print' do
    let(:transactions) do
      [{ date: '10/01/2023', amount: 1000, new_balance: 1000 },
       { date: '11/01/2023', amount: -500, new_balance: 500 }]
    end
    it 'generates the statement report' do
      expect do
        Statement.print(transactions)
      end.to output("date || credit || debit || balance\n11/01/2023 || || 500 || 500\n10/01/2023 || 1000 || || 1000\n").to_stdout
    end
  end
end
