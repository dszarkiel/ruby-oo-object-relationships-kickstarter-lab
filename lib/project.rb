class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        my_project_backers = ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end
        my_project_backers.map do |project_backer|
            project_backer.backer
        end
    end
end