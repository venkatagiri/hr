#!/bin/ruby

# https://www.hackerrank.com/contests/feb14/challenges/board-cutting

def get_max_position(costs)
  pos = 0
  costs.length.times { |i|
    pos = i if costs[i] > costs[pos]
  }
  return pos
end

def find_minimal_cost(row_costs, col_costs)
  #puts "ROW(#{row_costs.inspect}) COLS(#{col_costs.inspect})"
  return 0 if row_costs.length == 0 and col_costs.length == 0

  # Find the maximum of row and col costs
  row_max = get_max_position(row_costs)
  col_max = get_max_position(col_costs)

  if row_costs.length >= 1 and (col_costs.length == 0 or row_costs[row_max] > col_costs[col_max])
    # If row is larger, cut along the row 
    upper_block = row_costs.take(row_max)
    lower_block = row_costs.drop(row_max+1)
    #puts 'splitting into upper and lower blocks'
    return row_costs[row_max] + find_minimal_cost(upper_block, col_costs) + find_minimal_cost(lower_block, col_costs)
  else
    # If column is larger, cut along the column
    left_block = col_costs.take(col_max)
    right_block = col_costs.drop(col_max+1)
    #puts 'splitting into left and right blocks'
    return col_costs[col_max] + find_minimal_cost(row_costs, left_block) + find_minimal_cost(row_costs, right_block)
  end
end

def main
  # t test cases
  t = gets.chomp.to_i
  t.times {
    # the board dimensions
    rows, cols = gets.chomp.split(' ').map { |x| x.to_i }

    # Collect the costs
    row_costs = gets.chomp.split(' ').map { |x| x.to_i }
    col_costs = gets.chomp.split(' ').map { |x| x.to_i }

    # Let the magic begin
    puts find_minimal_cost(row_costs, col_costs)
  }
end

main
