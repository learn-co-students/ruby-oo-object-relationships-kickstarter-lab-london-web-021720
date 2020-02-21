class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end


    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backing = ProjectBacker.all.select { |projectbacker| projectbacker.project == self}
        backing.map { |behind| behind.backer}
    end

end