def add(x,y)
    return x + y
end
def subtract(x,y)
    return x - y
end
def sum(array)
    return array.sum
end 
def multiply(x,y)
    return x * y
end
def power(x,y)
    return x ** y
end
def factorial(x)
    if x == 0
    x = 0
    else
    (1..x).reduce(1, :*)    
    end
end