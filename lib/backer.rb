class Backer
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        x = ProjectBacker.all.select{ |thing| thing.backer == self }
        x.map{ |thing| thing.project }
    end

    def self.all
        @@all
    end
end