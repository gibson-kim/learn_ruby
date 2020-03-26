#write your code here

def add (num1, num2) 
    num1 + num2
end

def subtract (num1, num2)
    num1 - num2
end

def sum (nums)
    num = 0
    nums.each do |x|
        num += x
    end
    num
end

def multiply (num1, num2)
    num1 * num2
end

def power (num1, num2)
    num1 ^ num2
end

def factorial (num)
    if num == 0
        1
    end
    ans = 1
    loop do
        if num == 1 
            break
        end
        ans *= num
        num -= 1
    end
end