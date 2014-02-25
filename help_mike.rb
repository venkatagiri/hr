#!/bin/ruby

# https://www.hackerrank.com/challenges/help-mike

def main
  gets.strip.to_i.times {
    combos = 0
    n, k = gets.strip.split(' ').map { |i| i.to_i }
    (1..n).each { |i|
      ((i+1)..n).each { |j|
        combos += 1 if (i+j) % k == 0
      }
    }
    puts combos
  }
end

main
