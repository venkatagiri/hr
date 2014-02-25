#!/bin/ruby

def main
  stack = []
  gets.strip.split('').each { |c|
    if !stack.index(c).nil?
      stack.delete(c)
    else
      stack.push(c)
    end
  }
  if stack.length <= 1
    puts 'YES'
  else
    puts 'NO'
  end
end

main
