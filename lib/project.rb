class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        list = ProjectBacker.all.select {|pb| pb.project == self}
        list.map {|project| project.backer}
    end
end