card_number = "4929735477250543"
reverse_num = card_number.reverse
split_arr = reverse_num.split("")
arr_numbers = split_arr.map(&:to_i)

odd_positions = arr_numbers.select.each_with_index { |_, i| i.odd? }
even_positions = arr_numbers.select.each_with_index { |_, i| i.even? }

double_digits = even_positions.map { |double| double*2 }

grab_doubles = double_digits.select { |x| x > 9 }
alpha = grab_doubles.map { |x| x.to_s }
alpha_1 = alpha.map do |new|
  new.to_i
end
add_convert = alpha_1.reduce(:+)

grab_even = even_positions.select { |x| x < 9 }
odd_position_sum = odd_positions.reduce(:+)
even_sum = grab_even.reduce(:+)
sum = odd_position_sum + even_sum + add_convert

if add_convert % 10 == 0
  puts "This number is valid!"
else
  puts "This number is invalid!"
end
