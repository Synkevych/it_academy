# To explicit module use 

Модуль должен быть в той же папке что и файл который его использует

You can use module like 
- puts Math::PI
- include Math
- require 'module'


```ruby 
module Circle

  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end

# some new 

# Create your module here!

module MartialArts
  def swordsman
    puts "I'm a swordsman"
  end
end


class Ninja
include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

# and one more 

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now
```