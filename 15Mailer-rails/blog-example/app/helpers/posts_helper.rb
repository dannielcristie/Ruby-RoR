module PostsHelper
    def names_authors(authors)
        authors.all.map { |a| [a.First_name.to_s + ' ' + a.last_name.to_s, a.id ] }
    end
end
