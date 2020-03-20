# Inheritance Syntax "<"

- Наследования позволяет переиспользовать класы
- Наследовать мы можем только один класс 
- **super** - ключевое слово означает «вызови одноименный метод, который определен выше в цепочке наследования».
- **super** передаст все переменные, **super()** — ни одной.
- если метода нет и его отсутсвие необрабатывается то будет вызвано исключение
- Инициализация происходит через метод экземпляра initialize

```ruby 
class One < Two

end

## more examles 

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end


class Dragon < Creature
  def fight
    puts "Insted of breathing fire..."
    super
  end
end

# new Message class 

class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end

my_message = Message.new(0,10)
puts my_message 

# Inheritance 

class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end

class Email < Message
  def initialize(from, to)
    @from = from
    @to = to
    super
  end
end
```