#Hope and improved cypher.

def cypher message="Code not valid", code=0
    if not code.is_a? Integer
        message = "Code not valid"
        code = 0
    end

    letters = ("a".."z").to_a
    capital = ("A".."Z").to_a

    message.split(" ").map do | word |
        word.split("").map do |char| 
            if letters.include? char
                letters[((letters.find_index(char) + code) % 26)]
            elsif capital.include? char
                capital[(capital.find_index(char) + code) % 26]
            else
                char
            end
        end.join("")
    end.join(" ")
end

puts cypher "What a string!", 5