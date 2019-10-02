def countts(paragraph)
    t_count = 0
    i = 0

    while i < paragraph.size
        if paragraph[i] == "t" || paragraph[i] == "T"
            t_count = t_count + 1
        end

        i = i + 1
    end
    return t_count
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
    return count_even
end

def mean(x)
    i = 0
    sum = 0.0
    while i < x.size
        sum = sum + x[i]
        i = i + 1
    end
    return sum / x.size
end

def max(x)
    i = 0
    max = 0
    while i < x.size
        if x[i] > max
            max = x[i]
        end
        i = i + 1
    end
    return max 
end

def min(x)
    i = 0
    min = x[0]
    while i < x.size
        if x[i] < min
            min = x[i]
        end
        i = i + 1
    end
    return min
end

def meaner(x)
    i = 0
    sum = 0.0
    while i < x.size
        sum = sum + x[i]
        i = i + 1
    end
    sum = sum - max(x)
    sum = sum - min(x)
    size = x.size - 2
    return sum / size
end

def no_one_nor_n(n, x)
    i = 0
    while i < x.size
        if x[i] == 1 || x[i] == n
            result = false
        end
        i = i + 1
    end
    if result == false
        return false
    else
        return true
    end
end

def palindrome(word)
    i = 0
    while i < word.size
        if word[i] == word[(word.size - 1 - i)]
            result = true
        else
            resultf = false
        end
        i = i + 1
    end
    if resultf == false
        return false
    elsif result == true
        return true
    end
end

def count_palindromes(sentence)
    i = 0
    palindrome_count = 0
    word = ""

    while i < sentence.size
        if sentence[i] != " "
            word = word + sentence[i]
        elsif palindrome(sentence[word]) == true
            palindrome_count = palindrome_count + 1
            word = 0
        end
        i = i + 1
    end
    return palindrome_count
end

puts count_palindromes("a racecar stole my dad")

def ten_run(nums)
    i = 0
    multiple = 0
    while i < (nums.size - 1)
        if nums[i] % 10 == 0
            multiple = nums[i]
        end

        if nums[i] == multiple && nums[(i + 1)] % 10 != 0 
            nums[(i + 1)] = multiple
        end
        i = i + 1
    end
    return nums
end

def triple_up(nums)
    i = 0
    while i < (nums.size - 1)
        if nums[i] + 1 == nums[(i + 1)] && nums[(i + 1)] + 1 == nums [(i + 2)]
            return true
        end
    i = i + 1
    end
    return false
end
