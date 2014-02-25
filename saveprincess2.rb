#!/bin/ruby

# https://www.hackerrank.com/challenges/saveprincess2

def position(grid, char)
  grid.length.times do |i|
    return [i, grid[i].index(char)] unless grid[i].index(char).nil?
  end
end

def find_path(grid, mX, mY)
  pX, pY = position(grid, 'p')

  if mX < pX
      puts 'DOWN'
  elsif mX > pX
      puts 'UP'
  elsif mY < pY
      puts 'RIGHT'
  elsif mY > pY
      puts 'LEFT'
  end
end

def main
  grid_size = gets.strip.to_i
  mX, mY = gets.strip.split(' ').map { |x| x.to_i }
  grid = []

  grid_size.times do |i|
    grid.push(gets.strip.split(''))
  end

  find_path(grid, mX, mY)
end

main
