def substrings(text, dictionary)
    ocurrences = dictionary.reduce(Hash.new(0)) do |result, word|
        # If we find the word from the dictionary in the text, we add it to the result along with the number of ocurrences there are
        if (times = text.scan(/#{word}/i).length) > 0 then
            result[word] = times 
            result
        # In case we don't find the word
        else 
            result
        end
    end
    return ocurrences
end
