#!/bin/ruby

def position(grid, char)
  grid.length.times do |i|
    return [i, grid[i].index(char)] unless grid[i].index(char).nil?
  end
end

def find_path(grid)
  mX, mY = position(grid, 'm')
  pX, pY = position(grid, 'p')
  if mX <= pX
    begin
      puts 'DOWN'
      mX += 1
    end while mX != pX
  else
    begin
      puts 'UP'
      mX -= 1
    end while mX != pX
  end

  if mY <= pY
    begin
      puts 'RIGHT'
      mY += 1
    end while mY != pY
  else
    begin
      puts 'LEFT'
      mY -= 1
    end while mY != pY
  end
end

def main
  grid = []

  gets.to_i.times do |i|
    grid.push(gets.strip.split(''))
  end

  find_path(grid)
end

main