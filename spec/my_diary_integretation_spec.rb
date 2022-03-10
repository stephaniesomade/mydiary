require 'my_diary'

RSpec.describe MyDiary do
  it "reads all diary entries" do
    diary_entry = MyDiary.new
    diary_entry.add("02:01", "Today I went to the shops...")
    expect(diary_entry.read).to eq "02:01: Today I went to the shops..."
  end

  it "reads past diaries with contacts" do
    diary_entry = MyDiary.new
    list = List.new
    list.add_num("stephanie: 078653826101")
    list.add_num("contact_2: 0739263846276")
    diary_entry.add("02.01", "Today I went to the shops...")
    diary_entry.add("03.01", "Today after work I went to the gym and saw...")
    result = diary_entry.read_and_phone(list) 
    expect(result).to eq "02.01: Today I went to the shops..., 03.01: Today after work I went to the gym and saw..., phone contacts, stephanie: 078653826101, contact_2: 0739263846276"
  end

  it "returns the requested diary entry" do
    diary_entry = MyDiary.new
    diary_entry.add("02.01", "Today I went to the shops...")
    diary_entry.add("03.01", "Today after work I went to the gym and saw...")
    diary_entry.add("04.01", "Today I packed for my trip to...")
    result = diary_entry.select("04.01")
    expect(result).to eq "04.01: Today I packed for my trip to..."
  end

  it "checks the todo list" do
    diary_entry = MyDiary.new
    list = List.new
    list.add_todo("wash the car")
    list.add_todo("go to the gym")
    expect(list.see_todo).to eq "wash the car, go to the gym"
  end

  it "return an entry based on available time and reading speed" do
    diary_entry = MyDiary.new
    diary_entry.add("02.01", "Today I went to the shops...")
    diary_entry.add("03.01", "Today after work I went to the gym and saw...")
    selection = ReadTime.new(12, 1)
    expect(selection.time(diary_entry)).to eq "02.01: Today I went to the shops..., 03.01: Today after work I went to the gym and saw..."
  end 
end