require 'pry'

class Dog

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        save 
    end

    def self.all #is a class method returns all dog instances
        @@all
    end

    def self.clear_all
        #is a class method that empties the @@all array of all existing dogs
        self.all.clear 

    end

    def self.print_all
        #is a class method that puts out the name of each dog to the terminal
        self.all.map do |dog|
            puts dog.name
        end

    end

    def save
        #adds this dog instance to the @@all array when called
        @@all << self

    end


end