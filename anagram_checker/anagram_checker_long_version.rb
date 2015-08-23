#!/usr/bin/env ruby
# QAlitus Witold Krak
# email: qalitus.co@gmail.com
# emial: witold.krak@gmail.com
# tel: (+48) 531856240
# Date: August 2015

=begin rdoc
 Class Anagram contains 2 class methods:
 public 'check' method
 private 'word_processing' method
=end
class Anagram
=begin rdoc
'check' accept two arguments - string.
The purpose of this method is to compare string transformed by 
private method 'word_processing'.
If strings after transformation are the same then are anagrams
If not then are not anagrams. 
=end
  def self.check(first_word,second_word)
    puts "Words to be checked if are anagrams:"
    puts "1. #{first_word} >> in alphabetical order: [#{self.word_processing(first_word)}]"
    puts "2. #{second_word} >> in alphabetical order: [#{self.word_processing(second_word)}]"
  
    if self.word_processing(first_word)==self.word_processing(second_word)
      puts "Answer: Given words are anagrams"
    else
      puts "Answer: Given words ARE NOT anagrams"
    end  
  end
  
  private 
=begin rdoc
'word_processing' - accept one argument - string.
It use ruby build-in methods: dwoncase, gsub, chars, sort, join to:
- change all chars to downcase.
- strip out all non word chars [all except a-z, 0-9, underscore]
- alphabetically sort all chars in string and returning it as new string. 
=end
  def self.word_processing(word)
    return word.downcase.gsub(/\W/,'').chars.sort.join
  end
end
    
puts "Please enter first word:\n"
first_word=gets.chomp
puts "Please enter second word:\n"
second_word=gets.chomp

Anagram.check(first_word,second_word)


