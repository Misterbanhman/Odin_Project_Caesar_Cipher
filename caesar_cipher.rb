require 'pry-byebug'


def caesar_cipher(string,number)
    new_array = []
    convert_string = string.split('')
    convert_string.each do |letter|
        convert_value(letter,number,new_array)
    end
    p new_array.join
end

def convert_value (letter,number,new_array)
    alphabet = ('a'..'z').to_a


    if alphabet.include?(letter.downcase) == false
        new_array.push(letter)
    else
        is_uppercase = check_uppercase(letter)
        index = alphabet.index(letter.downcase)
        new_index = check_value(index + number)
        if is_uppercase == true
            new_array.push(alphabet[new_index].upcase)
        else
            new_array.push(alphabet[new_index])
        end
    end
end

def check_value(value)
    if value>25
        return value-26
    else
        return value
    end
end

def check_uppercase(letter)
    if letter != letter.capitalize
        return false
    else
        return true
    end
end

caesar_cipher("What a string!", 5)