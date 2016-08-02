def tweet(message, options = {})
	status = status.new
	status.log = options[:log]
	status.date = options[:date]
	status.body = message
	status.post
end

tweet("Practicing Ruby-Fu!", date: '01.01.2015', log: 12345)

#########

def get_tweets(list)
	unless list.authorized?(@user)
		raise AuthorizationException.new
	end
	list.tweets
end

begin
	tweets = get_tweets(my_list)
rescue AuthorizationException
	warn "You are not authorized to see this list."
end

#########

def mention(message, *names)
	status = status.new
	status.body = message
	status.mentions = names
	status.post
end

mention("Hello everybody!", "Jim", "Adam", "Susan")
... names[0] = "Jim", names[1] = "Adam", names[2] = "Susan" ...

#########

class Name
	def initialize(first_name, last_name = nil)
		@first = first_name
		@last = last_name
	end
	def format
		[@first, @last].compact.join(' ')
	end
end

user_names = []
user_names << Name.new("Jim", "Sterling")
user_names << Name.new("Kot", "Leopold")
user_names << Name.new("Ivan")

user_names.each do |name|
	puts name.format
end

#########

class Tweet
	attr_accessor: :status
	attr_reader: :created_at

	def initialize(status)
		@status = status
		@created_at = Time.new
	end
end

tweet = Tweet.new("Eating breakfest.")
tweet.created_at = Time.new(2014, ....) <= undefined method

#########













