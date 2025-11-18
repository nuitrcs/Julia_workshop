using StatsBase

function analyze_text_simple(sentence::String)
    # Convert to lowercase
    sentence_lower = lowercase(sentence)
    
    # Define vowels
    vowels = ['a','e','i','o','u']
    
    # Remove vowels
    no_vowels = join(filter(c -> !(c in vowels), sentence_lower))
   	# filter takes a function and a collection and returns only the elements 
        # for which the function returns true.
        # Here, the function is c -> !(c in vowels)
        # c is each character in the sentence.
        # c in vowels checks if the character is a vowel (a, e, i, o, u).
        # !(c in vowels) means NOT a vowel.
        # The function join joins all of these letters together


    println("Original sentence: $sentence")
    println("Without vowels: $no_vowels")
    
    # Count vowel frequencies
    vowel_chars = filter(c -> c in vowels, collect(sentence_lower))
        # collect() turns the sentence into an array of characters
        # Keep c if it is a vowel
        # countmap (from StatsBase) counts how many times each unique element appears and 
        # returns a dictionary 
        
    freq = countmap(vowel_chars)
    
    # Find most common vowel
    most_common_vowel = findmax(freq)[2]
    println("Most common vowel: $most_common_vowel")
       # findmax is a Julia function that returns a tuple (maximum_value, key) 
       # when applied to a dictionary.
       # ex: findmax(freq) would return (4, 'i')
       # 4 is the highest frequency and i is the key of that frequency
       # [2] grabs the second item of the dictionary (i)

    # Print frequencies without DataFrame
    println("\nVowel Frequencies:")
    for (vowel, count) in freq
        println("$vowel => $count")
    end
end

# Test
analyze_text_simple("Learning how to use Julia is so much fun!")
