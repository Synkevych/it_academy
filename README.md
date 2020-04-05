# It Academy

## This is a beginning of the course description

Don’t let people fool you into believing that Ruby on Rails is easy to learn. It’s not! It’s one of the best and most effective frameworks to develop web applications, but it takes time to understand and master. The worst mistake of all is to not learn Ruby before diving into Ruby on Rails. To avoid this, the book starts with the basics of Ruby. You will not become a Ruby guru after reading it, but you’ll understand the basic ideas, which is most important.  

It is easy to progran in Ruby, bur Ruby is not simple language.

There is one simple rule in the Ruby community: the fewer brackets, the cooler you are!
But you won’t get a medal for using fewer brackets. decide for yourself what makes you happy.

You can think of a class as a collection of methods.

Private methods only call a method within its own class or own instance.

But it wouldn’t be Ruby if you couldn’t do it shorter, right?

Snake_case for naming variable.

### Lessons:

- 1 Agile methodology
- 2 Git and Version Control System
- 3 DataBase
- 4 Ruby Synta
- 5 Get started with Rails

---

### Current versions of tools

> **Ruby 2.6.5 - 2.4(39%) or 2.5(22)**  
> **Rails 6 - 5.1(38%) or 4.2(34%)**  
> **Puma** Servers in production  
> **Bundler** Gem management  
> **RVM** Ruby version managers  
> **Rspec** Unit-testing frameworks  
> **RubyMine** IDEs  
> **Git** 2.26.0

---

### Ruby syntax

1. Loops & Iterators
2. Methods
3. Blocks
4. Sorting
5. Lambdas - nameless methods

---

### Tools

- Gem Bundler
- Nginx
- Cubernetis
- Sqlite
- RVM - Ruby version Manger
- Redis
- SQL Server
- jQuery
- Puma
- Heroku -> PaaS -платформа как услуга, потребитель получает доступ к использ. операционных систем, СУБД, средствам разработки и тестирования 

---

### Answer to everyday questions

1. Что ты делал вчера ?
2. Проблемы, Сложности возникшие в работе.
3. Что ты планируешь делать сегодня ?

> класы / функции / хеши  / модули / методы / проки /

---

### What to read

```diff
- работа с git
- заполнить документы
+ Continuous Integration (CI)
- Database normalization (in SQL)
! Transactions (ACID)
# SQL
```

---

### Why it worth learning Ruby these days?

```diff
+ Набор инструментов позволяет быстро запускать проекты
+ Требуемый стек = full-stack, который увеличевает взаимозаменяемость в команде
+ Slow and throughtful changes
+ Гибкость и простота использования 
- The full stack developer is a myth
- Full-stack - для тех у кого ограниченый бютжен - стартапы
- Нужно переключаться и понимать верстку, back-end, тестирование и девопс
- Ограничения в масштабируемости и скорости работы
- медленное внедрение новых возможностей языка
```

### Books:

- The Ruby Programming Language by David Flanagan and Yukihiro Matsumoto
- Язык программирования Ruby
- Путь Ruby - третье издание / 2014 / Фултон Хэл, Арко Андре

### Result Code and Phrase

| Code | Type | Phrase |
| --- | --- | --- |
| 1xxx | Inforamartional | Not Done Yet |
| 2xxx | Success | You win |
| 3xxx | Redirection | You lose but try again |
| 4xxx | Client Error | You lose, your fault |
| 5xxx | Server Error | You lose, my bad |

### Web applications architecture

- 2 Tiered: Client / Web Browser -> Web Server
- 3 Tiered: Client / Web Browser -> Web Server -> DataBase server
- front-end -> presentation layer
- back-end -> data access layer

### Continuous Integration

Is a software engineering practice in which isolated changes are immediately tested reported on when they are added to a larger code base.  

A software development practice where members of a team integrate their work frequently, usually each person integrates at least daily - leading to multiple integrations per day.  

Rules for CI

- Maintain a single repository
- Automate the build
- Make your build self-testing
- Automate deployment
- Make your build self-testing
- Every commit should build the mainline on an integration machine

### ORM - Object Rational Mapping (объектно-реляционное отображение)

Это техника, соединяющая сложные объекты приложения с таблицами в системе управления реляционными базами данных. С помощью ORM, свойства и взаимоотношения этих объектов приложения могут быть с легкостью сохранены и получены из базы данных без непосредственного написания выражений SQL, и, в итоге, с меньшим суммарным кодом для доступа в базу данных.  

### Ruby on Rails

- **Dont Repeat Yourself** - каждый кусок иннформации должен иметь единственное, неизбыточное, аторитетное представление в системе.
- **Convention Over Configuration** у Rails есть мнения о наилучших способах делать множество вещей в веб-приложении, и по умолчанию выставлены эти соглашения, вместо того, чтобы заставлять вас по мелочам править многочисленные конфигурационные файлы.

- Active Records is the M in MVC - ответственная за представление бизнес-логики и данных, фреймворк - **ORM**.  
Упрощает создание и использование бизнес-объектов, данные которых требуют персистентного хранения в базе данных.  
Как читать и писать базу данных.  

Which is the layer of the system responsible for representing business data and logic

- **routes.rb** хранит информацию маршрутов, он говорит Rails как соединять входящие запросы с контроллерами и экшенами.
- ресурс *resource :articles* это термин обозначающий коллекцию схожих объектов, статьи, люди, и т.д. Можно использовать CRUID для управления ресурсами. 
- **Контроллер** унаследованый класс от ApplicationController. экшенами  контроллеров могут юыть только *public* методы.
