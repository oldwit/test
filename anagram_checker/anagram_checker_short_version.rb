#!/usr/bin/env ruby
# Anagram checker v 1.0
# QAlitus Witold Krak
# email: qalitus.co@gmail.com
# emial: witold.krak@gmail.com
# tel: (+48) 531856240
# Date: August 2015


# This is short version of anagram_checker program without own class and methods definitions.
# 1. Anagram checker ask user to provide two words.
# 2. Given words are transformed using ruby build-in methods:
# - .gsub(/\W/,'') - replace all non word characters (regex /\W/) by empty char.
# - .chars.sort.join - alphabetically sort chars in given word.
# 3. Words after processing are compared and:
# if are the same words are anagrms.
# if are not the same words are not anagrams.

puts "Please enter first word:\n"
first_word=gets.chomp
puts "Please enter second word:\n"
second_word=gets.chomp
if    first_word.downcase.gsub(/\W/,'').chars.sort.join==second_word.downcase.gsub(/\W/,'').chars.sort.join 
  puts"Given words are anagrams"
else
  puts"Given words are NOT anagrams"
end