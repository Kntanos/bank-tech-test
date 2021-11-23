# frozen_string_literal: true

class Statement
  def self.print(transactions)
    puts 'date || credit || debit || balance'
    transactions.reverse_each do |transaction|
      if transaction[:amount].positive?
        puts "#{transaction[:date]} || #{transaction[:amount]} || || #{transaction[:new_balance]}"
      else
        puts "#{transaction[:date]} || || #{(transaction[:amount]).abs} || #{transaction[:new_balance]}"
      end
    end
  end
end
