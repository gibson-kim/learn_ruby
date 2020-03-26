class Book
    attr_accessor :title
    def title=(s)
        @title = s.split.map { |x|
            if !(x == "an" || x == "a" || x == "and" || x == "or" || x == "but" || x == "to" || x == "in" || x == "of" || x == "the")
                x = x.capitalize
            else
                x = x
            end
        }
        @title[0] = @title[0].capitalize
        @title = @title.join(" ")
    end
end
