class Project
    @@all = []
    attr_accessor :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        x = ProjectBacker.all.select{ |thing| thing.project == self }
        x.map{ |thing| thing.backer }
    end

    def self.all
        @@all
    end
end