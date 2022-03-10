class MyDiary
  def initialize
    @entries = []
  end 

  def entry
    @entries 
  end

  def add(date, entry)
    @entries << {"date" => date, "entry" => entry}
  end

  def read
    arr = []
    @entries.each do 
      |i| 
      arr << "#{i["date"]}: #{i["entry"]}"
      return arr.join(", ")
    end
  end

  def read_and_phone(list)
    arr = []
    @entries.each do 
      |i| 
      arr << "#{i["date"]}: #{i["entry"]}"
    end
    arr << "phone contacts, "
    contacts = list.contact
    str = contacts.join(", ")
    arr.join(", ") + str
  end

  def select(date)
    arr = []
    @entries.each do |i|
    if i["date"] == date
    arr << "#{i["date"]}: #{i["entry"]}"
    return arr.join(", ")
    end
    end
  end
end

class List
  def initialize
    @contact = []
    @tasks = []
  end

  def contact
    @contact
  end

  def add_num(contact)
    @contact << contact
  end

  def add_todo(task)
    @tasks << task
  end

  def see_todo
    @tasks.join(", ")
  end
end

class ReadTime
  def initialize(time, words_per_second)
    @time = time
    @wps = words_per_second
  end 

  def time(diary_entry)
    arr = []
    diary_entry.entry.each do 
      |i| 
      diary = i["entry"]
      seconds = (diary.split.size) / @wps
      i["time"] = seconds
      if seconds <= @time 
        arr << diary_entry.select(i["date"])
      end
    end
    return arr.join(", ")
  end 
end