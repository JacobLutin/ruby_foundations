 class BankAccount 

	attr_reader :balance, :accounts
	#=>
	# def balance
	# 	@balance
	# end
 
 	class << self

		def create_for(first_name, last_name)
			@accounts ||= []
			@accounts.push(BankAccount.new(first_name, last_name))
			
		end

		def find_for(name)
			@accounts.find { |account| name == account.full_name}
		end

	end

	def initialize(first_name, last_name)
		@balance = 0
		@first_name = first_name
		@last_name = last_name
		@transactions = []
	end

	def full_name
		@first_name + " " + @last_name
	end

	def deposit(amount, options={})
		@balance += amount
		options[:memo] ||= "Regular deposit."
		@transactions.push({amount: amount, memo: options[:memo]})
	end

	def withdraw(amount, options={})
		@balance -= amount
		options[:memo] ||= "Regular withdraw."
		@transactions.push({amount: amount, memo: options[:memo]})
	end

	def call_the_reset_method
		reset!
	end

	private
	def reset!
		@balance = 0
	end

end

BankAccount.create_for("Jacob", "Lutin")
my_account = BankAccount.find_for("Jacob Lutin")

my_account.deposit(200)
my_account.withdraw(100)
my_account.deposit(400, {memo: "This is a gift from my grandpa."})
# puts my_account.inspect

input = ''

until input == "quit"
	print "Type your command: "
	input = gets.chomp
	sum = 0
	case input
	when "inspect"
		puts my_account.inspect
	when "deposit"
		print "Type your sum: "
		sum = gets.chomp.to_i
		my_account.deposit(sum)
	when "withdraw"
		print "Type your sum: "
		sum = gets.chomp.to_i
		my_account.withdraw(sum)
	end
end

# BankAccount.accounts



