# Ctrl C to end loops 
#puts "Enter your age"
#$stdout.flush
#age = gets.chomp.to_i
#indefinite loop
#while age < 0
    #puts "Incorrect age, please enter a positive number:"
    #$stdout.flush
    #age = gets.chomp.to_i
#end

#puts "Your age is #{age}"

#3.times do
#    puts "Hi"
#end

#i = 0
#50.times do
#    i = i + 2
#   puts "#{i}"
#end

#while i < 100
#    i = i + 2
#    puts "#{i}"
#end

#i = 0
#10.times do
#    puts i*i
#    i = i + 1
#end

#       0  1  2
nums = [3, 6, 7, 8, 10, 4, 9, 0, 9]

#puts nums[0] # 3
#puts nums[3] # 
#puts nums[nums.size - 1] # 7 (last item)

#count9 = 0
#i = 0

#while i < nums.size
#    if nums[i] == 9
#        count9 = count9 + 1
#    end

#    i = i + 1
#end

#puts count9

#count9 = 0
#nums.each do |num|
#    if num == 9
#        count9 = count9 + 1
#    end
#end
#sum = 0
#nums.each do |num|
#    sum = sum + num
#end
#puts sum

animals = ["Cat", "Dog", "Bear", "Giraffe", "Lion"]

name = ""
animals.each do |animal|
    name = name + animal
end

#puts name
i = 1
listed = animals.map do |animal|
    "#{i} #{animal}"
    i = i + 1
end

#print listed

x = "letters"

i = 0
x.size.times do
#    puts x[i]
    i = i + 1
end



def count_evens(nums)
    count_even = 0
    i = 0

    while i < nums.size
        if nums[i] % 2 == 0 
            count_even = count_even + 1
        end

        i = i + 1
    end
end

puts count_evens(1, 2, 3)


sum = 0

nums.each do |num|
    sum = sum + num
end
#puts (sum / num.size) 

