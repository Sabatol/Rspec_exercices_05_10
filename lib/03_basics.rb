def who_is_bigger(a, b, c)
    if a == nil || b == nil || c == nil
        "nil detected"
    elsif a > b && a > c
        return "a is bigger"
    elsif b > a && b > c
        return "b is bigger"
    elsif c > a && c > b
        return "c is bigger"
    else 
    return "Some numbers are equal here..."
    end
end

def reverse_upcase_noLTA(phrase)
    return phrase.upcase.reverse.delete("ATL")
end

def array_42(array)
    return array.include?(42)
end

def magic_array(array)
    return array.flatten.sort.map! {|a| a * 2 }.delete_if { |a| a % 3 == 0 }.uniq
end