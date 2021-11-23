# frozen_string_literal: true

require './lib/statement'

RSpec.describe Statement do
  describe '#print' do
    let(:transactions) do
      [{ date: '10/01/2023', amount: 1000, new_balance: 1000 },
       { date: '11/01/2023', amount: -500, new_balance: 500 }]
    end
    it 'generates the statement report' do
      expect(Statement.print(transactions)).to output([{ date: '10/01/2023', amount: 1000, new_balance: 1000 },
                                           { date: '11/01/2023', amount: -500, new_balance: 500 }])
    end
  end
end
