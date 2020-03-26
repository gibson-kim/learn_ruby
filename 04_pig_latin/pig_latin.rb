#write your code here

def translate(s)
    s = s.split.map { |x|
        if x[0].count("aeiou") > 0 
            puts x[0].count("aeiou")
            x += "ay"
        else
            while x[0].count("aeiou") == 0
                if x[0] == "q" && x[1] == "u"
                    x = x[2..-1] + x[0..1]
                else
                    x = x[1..-1] + x[0]
                end
            end
            x += "ay"
        end
    }
    s.join(" ")
end