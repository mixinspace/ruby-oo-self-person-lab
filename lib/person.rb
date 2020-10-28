# your code goes here
class Person
attr_accessor :bank_account, :happiness, :hygiene
attr_reader :name
def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
end

def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
end

def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
end

def happy?
    happiness > 7
end

def clean?
    hygiene > 7
end

def get_paid(salary)
    @bank_account = bank_account + salary
    p "all about the benjamins"
end

def take_bath
    self.hygiene = hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"   
end

def work_out
    self.hygiene = hygiene - 3
    self.happiness = happiness + 2
    p "♪ another one bites the dust ♫"

end

def call_friend(friend)
    self.happiness = happiness + 3
    friend.happiness = friend.happiness + 3
    p "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
    people = [self, person]
    if topic == "politics"
        people.each { |o| o.happiness -= 2}
      first, second = ["partisan", "lobbyist"]
    elsif topic == "weather"
        people.each { |o| o.happiness += 1}
      first, second = ["sun", "rain"]
    end
    first ||= "blah"
    second ||= "blah"
    base_string = "blah blah #{first} blah #{second}"
  end




end
