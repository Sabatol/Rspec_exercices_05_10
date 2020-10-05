def bidouille(word)
    voyelle = ["a","e","i","o","u","y"]
    lettres = word.chars
        # Si les deux premières lettres forment "qu"
        if lettres[0] == "q" && lettres[1] == "u" || lettres[0] == "Q" && lettres[1] == "u" || lettres[0] == "Q" && lettres[1] == "U" || lettres[0] == "q" && lettres[1] == "U"
            return lettres.rotate!(2).join("") + "ay" 
        # Sinon, si la première lettre est une consonne et les deuxièmes et troisièmes lettres forment "qu"
        elsif lettres[0] != "a" && lettres[0] != "e" && lettres[0] != "i" && lettres[0] != "o" && lettres[0] != "u" && lettres[0] != "y" && lettres[1] == "q" && lettres[2] == "u"
            return lettres.rotate!(3).join("") + "ay" 
        # Si la première lettre est une voyelle
        elsif lettres[0] == "a" || lettres[0] == "e" || lettres[0] == "i" || lettres[0] == "o" || lettres[0] == "u" || lettres[0] == "y"
            return lettres.join("") + "ay"
        # Sinon, si la seconde lettre est une voyelle
        elsif lettres[1] == "a" || lettres[1] == "e" || lettres[1] == "i" || lettres[1] == "o" || lettres[1] == "u" || lettres[1] == "y" && lettres[0] != "q"
            return lettres.rotate!.join("") + "ay" 
        # Sinon, si la troisième lettre est une voyelle
        elsif lettres[2] == "a" || lettres[2] == "e" || lettres[2] == "i" || lettres[2] == "o" || lettres[2] == "u" || lettres[2] == "y"
            return lettres.rotate!(2).join("") + "ay"  
        # Sinon, si la quatrième lettre est une voyelle
        elsif lettres[3] == "a" || lettres[3] == "e" || lettres[3] == "i" || lettres[3] == "o" || lettres[3] == "u" || lettres[3] == "y"
            return lettres.rotate!(3).join("") + "ay"  
        end
end

def translate(sentence)
    sentence.split(" ").map {|mot| bidouille(mot)}.join(" ")
end



    #v1: lettres = word.split("").map.with_index{|letter, index| index == 0 && voyelle.include?(letter) ? word + "ay" : word.delete }.join
    #vdavid:     def translate(a)
    #   split_words = Array.new
    #   words = a.split(' ')

    #   words.each do |word|
    #     while word.start_with?('b','c','h','s','q','u','t','r','f','p')
    #       word = word.split('').rotate.join('')
    #     end
    #     word << "ay"
    #     split_words << word
    #   end

    #   return split_words.join(' ')
    # end
    ####################################