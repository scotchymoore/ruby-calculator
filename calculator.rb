@valid_ops = ["+", "-", "*", "/"]

def left_num
  puts "Enter number: "
  @l_num = gets.chomp.to_f
  # if @l_num != Integer
  #   puts "Not valid answer. Enter a number."
  # end
  modifier
end

def right_num
  puts "Enter number: "
  @r_num = gets.chomp.to_f
  # if @r_num != Integer
  #   puts "Not valid answer. Enter a number."
  # end
  answer
  menu
end

def modifier
  puts "Enter modifier: + - * /"
  @choice = gets.chomp
   if  @valid_ops.include? (@choice)
     right_num
   else
    puts "Not valid Answer. Try again."
    modifier
    end
  right_num
 end

def multiply_num
  mn = (@l_num * @r_num)
  puts " = #{mn}"
end

def add_num
  an = (@l_num + @r_num)
  puts " = #{an}"
end

def subtract_num
  sn = (@l_num - @r_num)
  puts " = #{sn}"
end

def divide_num
  dn = (@l_num / @r_num)
  puts " = #{dn}"

end

def answer
  case @choice
  when "+"
    add_num
  when "-"
    subtract_num
  when "*"
    multiply_num
  when "/"
    divide_num
  end

  end

def menu
  puts
  puts
  puts "To use calculator again press 1"
  puts "To exit press 2"
  num = gets.chomp.to_i
  case num
  when 1
    left_num
  when 2
    exit
  else
    puts "Invalid. Your choice is 1 or 2. Try Again."
    menu
  end
  end


puts "Calculator"
puts
left_num
