#!/bin/ruby

# https://www.hackerrank.com/challenges/common-child

def main
  s1 = gets.chomp.split('')
  s2 = gets.chomp.split('')

  len = 0

  s1.length.times { |i|
    pos = s2.index(s1[i])
    if !pos.nil?
      len += 1
      s2 = s2.drop(pos+1)
			puts s2.inspect
    end
  }

  puts len
end

main
