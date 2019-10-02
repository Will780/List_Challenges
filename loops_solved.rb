#1 -> I don't need to see everything in the list

## -> list[x], no loops

def median(list)
    sorted = list.sort
    #odd list
    if sorted.size % 2 == 1
        return sorted[sorted.size / 2]
    #even list
    else
        return (sorted[sorted.size / 2] + sorted[sorted.size / 2 - 1]) / 2.0
    end
end

#             0  1  2
#puts median([1, 2, 3]) #2
#puts median([1, 2, 3, 4]) #2.5

#puts starts_with?([1, 2, 3], 1) #true
#puts starts_with?([1, 2, 3], 2) #false

def starts_with?(list, number)
    if list[0] == number
        return true
    else
        return false
    end
end

#2 -> Need to see everyhting in the list
### -> one loops, or seperate loops

def avg(list)
    total = 0

    list.each do |n|
    total += n
    end
    return total / list.size.to_f
end

#puts avg([1, 2, 3]) #2

def count(list, number)
    c = 0
    list.each do |n|
        if n == number
            c += 1
        end
    end
    return c
end

#puts count([1, 1, 1], 1) #3
#puts count([1, 1, 1], 2) #0

def std_dev(list)
    total = 0

    list.each do |n|
    total += n
    end
    return total / list.size.to_f

    sum_squares = 0

    list.each do |n|
        sum_squares += (n - avg) * (n - avg)
    end
    return Math.sqrt(sum_squares / (list.size - 1))
end

#puts std_dev([1, 2, 3]) # 2

#3 -> Have to compare each thing in list to all other things
#### nested loops

#mode with an unsorted list

def mode(list)
max_count = 0
mode = list[0]

    list.each do |n| # looking for a mode, number by number
        
        count = 0
        list.each do |m| # count how many "n"s there are
            if m == n
                count += 1
            end
        end
        if count > max_count
            max_count = count
            mode = n
        end
    end
    return mode
end

#puts mode ([2, 3, 1, 2, 2, 3, 2]) # 2

def is_increasing?(list)
    i = 0
    while i < (list.size - 1)
        if list[i] >= list[i + 1]
            return false
        end
        i += 1
    end
    return true
end

# puts is_increasing?([1, 2, 3]) # true
# puts is_increasing?([3, 2, 1]) # false
# puts is_increasing?([1, 2, 2, 3]) # false

def num_cats(str)
    count = 0
    (str.size - 2).times do |i|
        slice = str[i..(i+2)]
        if slice == "cat"
            count += 1
        end
    end
    return count
end

# puts num_cats("catdogcatdogcat") #3
# puts num_cats("catdog") #1

#-------------------------------------------------------------------------
#List Challenges

def threed(list)
    i = 0
    count_3 = 0
    while i < (list.size)
        if list[i] == 3 && list[i + 1] == 3
            return false
        end
        
        if list[i] == 3
            count_3 += 1
        end

        if count_3 > 3
            return false
        end
        i += 1
    end

    if count_3 == 3
        return true
    else 
        return false
    end
end

def same_first_last(list)
    if list.size > 1
        if list[0] == list[list.size - 1]
            return true
        end
    end
    return false
end

def get_sandwhich(str)
    start = 0
    last = 0
    (str.size - 4).times do |i|
        slice = str[i..(i+4)]
        if slice == "bread" && start == 0
            start = (i+5)
        elsif slice == "bread"
            last = (i - 1)
        end
    end

    if start != 0 && last != 0
        return str[start..last]
    end
    return ""
end

def shift_left(list)
    shiftedlist = list[1..(list.size - 1)], list[0]
    return shiftedlist
end

# puts shift_left([6, 2, 5, 3])

def can_balance(list)
    i = 0
    lsum = 0.0
    rsum = 0.0
    sum = 0.0
    if list.size > 1
        while i < list.size
            sum += list[i]
            i += 1
        end
        i = 0
        while i < (list.size - 1)
            lsum += list[i]
            rsum = sum - lsum
            if lsum == rsum
                return true
            end
        i += 1
        end
    end
    return false
end

# puts can_balance([1, 2, 3, 4, 5, 5]) #true
# puts can_balance([1, 2, 3, 4, 10]) #true
# puts can_balance([1]) #false
# puts can_balance([12, 2, 47]) #false

def count_code(str)
    count_coe = 0
    (str.size - 3).times do |i|
        slice = str[i..(i+1)] + str[(i+3)]
        if slice == "coe"
        count_coe += 1
        end
    end
    return count_coe
end

def middle_way(list1, list2)
    
    # if list1.size % 2 == 1
        list_new1 = list1[list1.size / 2] # when odd (always)
    # else
    #   list_new1 = (list1[list1.size / 2] + list1[list1.size / 2 - 1]) / 2.0 # when even
    #end

    # if list2.size % 2 == 1
        list_new2 = list2[list2.size / 2] # when odd (always)
    # else
    #   list_new2 = (list2[list2.size / 2] + list2[list2.size / 2 - 1]) / 2.0 # when even
    # end

    list_new = [list_new1, list_new2]
    return list_new
end

def either_2_4(list)
    i = 0
    tru_4 = 0
    tru_2 = 0
    while i < list.size
        if tru_4 == 1 && list[i] == 2 && list[i + 1] == 2
            return false
        elsif tru_4 == 0 && list[i] == 2 && list[i + 1] == 2
            tru_2 = 1
        end
        
        if tru_2 == 1 && list[i] == 4 && list[i + 1] == 4
            return false
        elsif tru_2 == 0 && list[i] == 4 && list[i + 1] == 4
            tru_4 = 1
        end

        i += 1
    end

    if tru_2 == 1 || tru_4 == 1
        return true
    end

    return false
end

# puts either_2_4([2, 4, 4, 2]) # true
# puts either_2_4([2, 2, 4, 4]) # false
# puts either_2_4([2, 2, 2, 2]) # true
# puts either_2_4([2, 2, 3, 4, 4]) #false

#loops inside loops
def max_span(list)
    a = 0
    b = 0
    max_span = 1
    while a < list.size
        while b < list.size
            if list[a] == list[b] && (b - 1 - a) > max_span
                max_span = (b - 1 - a)
            end
            b += 1
        end
        a += 1
        b = 0
    end
    return max_span
end

# puts max_span([2, 4, 5, 6, 2]) #3
# puts max_span([2, 4, 5, 6, 7, 5, 2]) #5
# puts max_span([3, 4, 5, 6, 4, 2, 5]) #3
# puts max_span([3, 2, 3, 6, 4, 1, 5]) #1

def g_happy(str)
    i = 0
    g = 0
    while i < str.size
        if str[i] == "g"
            g = 1
            if str[i - 1] != "g" && str[i + 1] != "g"
                return false
            end
        end
        i += 1
    end
    if g == 1
        return true
    end
end

# puts g_happy("Henry's suggestions are aggressive") #true
# puts g_happy("This is missing a letter") #false
# puts g_happy("This string is unhappy") #false

def merge(list1, list2)
    i = 0
    a = 0
    combined = list1 + list2
    min = combined[0]
    sorted = []
    while a < combined.size
        while i < combined.size
            if combined[i] < min
                min = combined[i]
            end
            i += 1
        end

        combined = combined - [min]
        sorted += [min]
    
        min = combined[0]
        if combined.size == 0
            return sorted
        else
            i = 0
        end
    end
end

# doesn't sort duplicate numbers

# puts merge([1, 2, 3], [4, 5, 6]) #1, 2, 3, 4, 5, 6
# puts merge([1, 3, 5], [2, 4, 6]) #1, 2, 3, 4, 5, 6
# puts merge([4, 5, 6], [1, 2, 3]) #1, 2, 3, 4, 5, 6
# puts merge([1, 7, 9], [2, 3, 5]) #1, 2, 3, 5, 7, 9