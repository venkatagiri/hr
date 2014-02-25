#!/bin/ruby

# https://www.hackerrank.com/challenges/lonely-integer

def main
  gets # Not Used
  stack = []
  gets.strip.split(' ').each { |n|
    if !stack.index(n).nil?
      stack.delete(n)
    else
      stack.push(n)
    end
  }
  puts stack.pop()
end

main
