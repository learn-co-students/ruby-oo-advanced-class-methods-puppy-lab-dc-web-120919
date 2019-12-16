class Dog
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.map {|dog_array| puts dog_array.name}
    end
end