#!/bin/ruby

# https://www.hackerrank.com/contests/feb14/challenges/sherlock-and-watson

def main
  n, k, q = gets.split(' ').map { |x| x.to_i }
  array = gets.split(' ')

  q.times {
    index = gets.to_i
    puts array[index - k]
  }
end

main
