#!/usr/bin/env ruby

puts "what is your first name"
fname= gets.capitalize.chomp
fnamelength = fname.length

puts " what is your middle name,"
mname= gets.capitalize.chomp
mnamelength = mname.length

puts "and what is your last name"
lname= gets.capitalize.chomp
lnamelength = lname.length

puts "Nice to meet you, #{fname} #{mname} #{lname}"
puts "Your name consits of #{fnamelength+mnamelength+lnamelength} characters"
