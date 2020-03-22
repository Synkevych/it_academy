class Friend
	# переменная класса 
	@@myname = "Roman"
	def initialize(name, sex, phone)
		# переменные экземпляра 
		@name, @sex, @phone = name, sex, phone
	end

	# екземпляр класса
	def hello
		puts "Hi, my name is #{@name}."
	end

	def Friend.out_common_frind 
		puts "We are all friends #{@@myname}"
	end
end

f1 = Friend.new("Ivan", "F", "555-1212")
f2 = Friend.new("Bohdan", "F", "575-1756")

f1.hello 
f2.hello
Friend.out_common_frind