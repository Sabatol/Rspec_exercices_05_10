def echo(word)
    return word
end
def shout(word)
    return word.upcase
end
def repeat(word, x=2)
    return ([word] * x).join(" ")
end
def start_of_word(word, x=0)
    return word[0...x]
end
def first_word(sentence)
    return sentence.split[0]
end
# def titleize(sentence) #ne retourne pas les valeurs filtrées dans le join
#     return sentence.split.map{|a| unless a.length <= 2 || a == "the" || a == "and" || a == "for" ; a.capitalize end}.join(" ")
# end
# def titleize(sentence) #ne prend pas en compte la condition
#     return sentence.split.map{|a| if a.length > 2 || a != "the" || a != "and" || a != "for" ; a.capitalize end}.join(" ")
# end
def titleize(sentence) 
    return sentence.split.map.with_index{|word, index| index == 0 || word.length > 3 ? word.capitalize : word }.join(" ")
end
# def titleize(sentence) #version différentes avec création d'une liste d'exclusion en amont
#     stop_words = ["and", "in", "the", "of", "a", "an"] # égal à %w(and in the of a an)
#     sentence.capitalize.split.map{|word| stop_words.include?(word) ? word : word.capitalize}.join(' ')
# end