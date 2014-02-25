#!/bin/ruby

# https://www.hackerrank.com/contests/feb14/challenges/make-it-anagram

def main
  s1 = gets.chomp().split('')
  s2 = gets.chomp().split('')

  # switch strings if 2nd string is longer than 1st.
  s1, s2 = [s2, s1] if s2.length > s1.length

  s1.length.times { |i|
    pos = s2.index(s1[i])
    if !pos.nil?
      s2[pos] = s1[i] = -1
    end
  }
  s1.delete(-1)
  s2.delete(-1)

  puts s1.length + s2.length
end

main
