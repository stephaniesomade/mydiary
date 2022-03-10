As a user so that I can record my experiences
I want to keep a regular diary - my_diary class

As a user so that I can reflect on my experiences
I want to read my past diary entries - my_diary class

As a user so that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed - my_diary class (!!!)

As a user so that I can keep track of my tasks
I want to keep a todo list along with my diary - TodoList class

As a user
So that I can keep track of my contacts I want to see a list of all of the mobile phone numbers in all my diary entries -- contacts class

```ruby
class: myDiary

initialize
* The method will accept no parameters.

* The method would hold an instance variable that is an empty hash.

methods 
* add - takes two parameters as strings. It adds the date and diary entry to the empty hash.

* read - prints out the diary entries

* read_phone - accepts two parameters, one is new instance of the List class and the other being the date of the entry and returns the entry and all the mobile phone numbers

# *  - accepts a parameter that is the time the reader has.

# * reading_time - accepts two parameters (diary text, reading speed) and returns how much time it takes the reader. 
# select diary entries to read based on how much time and reading speed.

class: List

initialize
* the method will accept no parameters

* holds two instance variables. One is a contacts_list and the other a todo_list that is an empty array

methods
* add_num - accepts one parameter which is a string. This then adds the task to contacts_list.  

* add_todo - accepts one parameter which is a string.

*todo_list - returns the todolist in a format. 
```

```ruby
# example test cases 

# 1 - read all diary entries
diary_entry = myDiary.new
diary_entry.add("02.01", "Today I went to the shops...")
diary_entry.add("03.01", "Today after work I went to the gym and saw...")
diary_entry.read
# => "02.01: Today I went to the shops..., 03.01:Today after work I went to the gym and saw...,"

# 2 - adds diary entry and reads past diary entries with contacts
diary_entry = MyDiary.new
list = List.new
list.add_num("stephanie: 078653826101")
list.add_num("contact_2: 0739263846276")
diary_entry.add("02.01", "Today I went to the shops...")
diary_entry.add("03.01", "Today after work I went to the gym and saw...")
diary.read_phone(list, "02.01")
# => "02.01: Today I went to the shops..., 03:01: Today after work I went to the gym and saw..., mobile phone contacts: * stephanie: 078653826101, * contact_2: 0739263846276"

# 3 Check todo list along with diary entries
diary_entry = myDiary.new
list = List.new
list.add_todo("wash the car")
list.add_todo("go to the gym")
list.todo_list
# => "wash the car, go to the gym"

# - Read_time class
diary_entry = MyDiary.new
diary_entry.add("02.01", "Today I went to the shops...")
diary_entry.add("03.01", "Today after work I went to the gym and saw...")
time = ReadTime.new(20, 1)

```
