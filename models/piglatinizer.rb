require 'pry'
class PigLatinizer

    def piglatinize(string)
        string.split(" ").map do |word|
            vowel = "aeiouAEIOU"
            if vowel.include?(word[0])
                word << "way"
            else
                new_vowel = word.split("").detect{|letter| vowel.include?(letter)}
                vowel_index = word.index(new_vowel)
                consonant = word.slice(0...vowel_index)
                left = word.slice(vowel_index..)
                left + consonant + "ay"
               # binding.pry
            end
        end.join(" ")
    end
end

#x = PigLatinizer.new
#x.piglatinize("eye")