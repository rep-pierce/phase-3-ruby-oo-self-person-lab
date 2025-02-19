# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize (name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def hygiene=(hygiene)
        if hygiene > 10 
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happiness=(happiness)
        if happiness > 10 
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic="nothing")
        if topic == "politics"
            self.happiness = self.happiness - 2
            person.happiness = person.happiness - 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            person.happiness = person.happiness + 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end