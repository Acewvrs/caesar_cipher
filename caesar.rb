def caesar_cipher(message, shift) 
    idx = 0
    message.each_byte do |c|
        if c >= 65 && c <= 90 #deals with uppercase conversion
            c += shift
            if c > 90 #circles back if goes past Z
                offset = c - 90
                c = 64 + offset
            elsif c < 65
                offset = 65 - c
                c = 91 - offset
            end
        elsif c >= 97 && c <= 122 #deals with lowercase conversion
            c += shift
            if c > 122 #circles back if goes past z
                offset = c - 122
                c = 96 + offset
            elsif c < 97
                offset = 97 - c
                c = 123 - offset
            end
        end
        message[idx] = c.chr
        idx += 1
    end
    message
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("ABCDEFG", -7) #works backward