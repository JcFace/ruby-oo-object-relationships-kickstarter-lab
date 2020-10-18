class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects = ProjectBacker.all.select do |pr|
            pr.project == self
        end
        projects.map do |pr|
            pr.backer
        end
    end

end