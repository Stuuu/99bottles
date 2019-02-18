class Bottles 


    def verse(verse_number) # should return a single verse of the song
    
        case verse_number 
        when 3..99
        verse = <<-EOS
#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.
Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.
EOS

        when 2
            verse = <<-EOS
#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.
Take one down and pass it around, #{verse_number - 1} bottle of beer on the wall.
EOS
   
        when 1 
verse = <<-EOS
#{verse_number} bottle of beer on the wall, #{verse_number} bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
EOS

        when 0 
verse = <<-EOS
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
EOS
        end

        return verse

    end




    def verses(starting_verse, ending_verse) # returns a range of versus seperated by a line
        song = ""
        verse_count = starting_verse
        while verse_count >= ending_verse
            
            song += verse(verse_count)
            
            if verse_count != ending_verse
                song += "\n"
            end

            verse_count -= 1
        end

        return song
    end

    

    def song
        return self::verses(99,0)
    end

end


