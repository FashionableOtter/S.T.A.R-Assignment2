def split_and_sort(nums)
  raise "Error: Input list should not contain more than 20 integers." if nums.length > 20
  raise "Error: The number 0 is not a valid input." if nums.include?(0)
  
  for i in 0..nums.length do
    for j in 0..nums.length do
      if i != j
        if nums[i] == nums[j]
          nums.delete_at(j)
        end
      end
    end
  end

  odd_nums = nums.select { |num| num.odd? }.sort
  even_nums = nums.select { |num| num.even? }.sort

  [odd_nums, even_nums]
end

nums = [5, 46, 31, 34, 9, 4, 5, 29, 31, 31, 46, 7, 4, 29, 34, 5, 8, 23, 56, 6]
odd_nums, even_nums = split_and_sort(nums)
puts "Odd numbers: #{odd_nums}"
puts "Even numbers: #{even_nums}"
