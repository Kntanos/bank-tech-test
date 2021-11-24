# frozen_string_literal: true

require './lib/bank_account'

RSpec.describe BankAccount do
  describe '#initialize' do
    let(:account) { BankAccount.new }
    it 'initializes the class with 2 arguments' do
      expect(account.transactions).to eq(Transactions)
      expect(account.statement).to eq(Statement)
    end
  end

  describe '#make_deposit' do
    let(:return_value) { 'a new deposit' }
    it 'adds a transaction to the list of transactions' do
      class_double('Transactions', deposit: return_value).as_stubbed_const

      expect(Transactions.deposit('10/01/2023', 1000)).to eq('a new deposit')
    end
  end

  describe '#make_withdrawals' do
    let(:return_value) { 'a new withdrawal' }
    it 'adds a transaction to the list of transactions' do
      class_double('Transactions', withdrawal: return_value).as_stubbed_const

      expect(Transactions.withdrawal('11/01/2023', 5000)).to eq('a new withdrawal')
    end
  end

  describe '#request_statement' do
    let(:list) { 'a list of transactions' }
    let(:return_value) { 'a new statement' }
    it 'requests the statement of transactions' do
      class_double('Statement', print: return_value).as_stubbed_const

      expect(Statement.print(list)).to eq('a new statement')
    end
  end
end
