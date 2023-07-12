def longest_consecutive(nums)
    num_set = Set.new(nums)
    max_len = 0
  
    nums.each do |num|
      if !num_set.include?(num - 1)
        cur_len = 1
        while num_set.include?(num + 1)
          num += 1
          cur_len += 1
        end
        max_len = [max_len, cur_len].max
      end
    end
  
    max_len
  end
 
  nums = [100, 4, 200, 1, 3, 2]
  puts longest_consecutive(nums)
  