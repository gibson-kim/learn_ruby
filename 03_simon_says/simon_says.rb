#write your code here
def echo(s)
    s
end

def shout(s)
    s.upcase
end

def repeat (s)
    s + " " + s
end

def repeat (s, num = 2)
    if num == 0
        return
    end
    result = s
    num -= 1
    loop do
        if num == 0
            break
        end
        result += " " + s
        num -= 1
    end
    result
end

def start_of_word (s, n)
    s[0..n-1]
end

def first_word (s)
    s.split[0]
end

def titleize (s)
    #s.split.map{|x| if !(x == "and" || x == "to") then x.capitalize else x end}.join(" ")
    s = s.split.map.with_index { |x, index|
        if !(x == "and" || x == "to" || x == "the" || x == "over")
            x.capitalize
        else
            if index == 0 
                x.capitalize
            else
                x 
            end
        end
    }
    s.join(" ")
end

