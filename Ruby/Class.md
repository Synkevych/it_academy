# Ruby is an object-oriented programming language
Everything in Ryby is an object

### Local or Class Variable and Global Variable

- @name - an instance variable of the class
- Scope - the context in which it's visible to the program
- @@name - class itself variable
- $name - global variable

### Access control 

- public - by default 
- private - can be used only within the class definition, for internal usage. If you try to call method you receive "NoMethodError".
- protecred - can be called with, or without, an explicit receiver, but that receiver is always *self* or an object that inherits from self(ex:is_a?(self)).

- attr_writer
- attr_reader 
- attr_accessor  => attr_reader + attr_writer

---

### Работа с классами и модулями:

> load - операция читает файл и исполняет его в текущем контексте
> require - аналогична load, но не загружает файл если он уже был загружен  

```ruby 
class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end
	
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description
```
The Computer exersise

```ruby 
class Computer
  @@users = Hash.new()
  
  def initialize(username, password)
    @username = username
    @password = password
    @files = Hash.new()
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "New file #{filename} has created! by user#{@username}"
  end
  
  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("Ruby", "guest")
puts my_computer

attr_writer :name

do like this

def job=(new_job)
  @job = new_job
end

attr_reader :name do like

def init (name)
  @name = name
end

attr_accessor :name do both thing

class Account
  attr_reader :name
  attr_reader :balance
  
  def initialize(name, balance = 100)
    @name = name
    @balance = balance
  end
end

```