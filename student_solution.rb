######## Get Started with a Few Reps Homework Section ########

# 1. Print "Hello World" to the console
p "Hello World"

# 2. Interpolate the adjective variable into the Hellow World string using a string literal
adjective = "Big Bad"
p "Hello #{adjective} World"

# 3. Save the string "Hello World" to a variable. Without changing the letters in your code manually, use a string method to permanently change "Hello World" to uppercased letters. Print the value of the variable you created.
hello = "Hello World" 
p hello.upcase!


######## Nums Array and Enumerables Homework Section ########

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]
p nums

# 1. Use .uniq to print the array with all duplicate entries removed
p nums.uniq

# 2. Next, use .push and .pop , .shift .unshift and .length on the array as you would with javaScript (if you need to add a number, add 5)
p nums.push(100) # adds to end of nums-arr
p nums.pop # removes from end of nums-arr 
p nums.shift # removes from front of nums-arr 
p nums.unshift(100) # adds to beginning of nums-arr

# 3. Use .include? to check if the array contains the number 8
p nums.include? 8 # 'Predicate' method returns a boolean 

# 4. Use .find_all to find all the numbers greater than 10
p nums.find_all { |currNum| currNum > 10 } 

# 5. Use .all? to check if all the numbers are greater than 0?
p nums.all? { |val| val > 0} # prints false cause there are two values inside nums-arr = 0

# 6. Use any? to check if there are any numbers that are divisible by 8
p nums.any? { |d| d % 8 == 0 } 

# 7. Use .count to let you know how many numbers are greater than 4
p nums.count { |x| x > 4 } 

# 8. Use .each_with_index to print each item times its index
p nums.each_with_index { |v, idx| p v * idx } 

# 9. .find the number that is divisible by 7 and 5 and is greater than 0 
p nums.find { |v| v % 7 == 0 and v % 5 == 0 and v > 0 } # prints 35

# 10. .find_index of the number that is divisible by 5 and 7 and is greater than 0
p nums.find_index { |v| v % 7 == 0 and v % 5 == 0 and v > 0 } # prints index of 14 

# 11. Return the .first 3 numbers
p nums.first(3)

# 12. Return the .last 5 numbers 
p nums.last(5) # prints [2, 3, 4, 12, 15] 

# 13. .group_by the modulo of 3 ( % 3 )
p nums.group_by { |v| v % 3 } # returns a hash

# 14. Use minmax to return the smallest and largest number
p nums.minmax # prints 0 and 100 

# 15. Use .reject to return all the numbers that are NOT divisible by 3
p nums.reject { |v| v % 3 != 0}

# 16. Use .select to return all the numbers divisible by 5
p nums.select { |z| z % 5 == 0}

######## Color Array Section ########
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

# 1. Print out a random color
p colors.sample 

# 2. Print out the colors array in reverse-order
p colors.reverse

# 3. Print out all of the colors in the array with all capital letters.
p colors.each { |v| p v.upcase}


######## Ruby Methods Section ########
# 1. Write a method named find_area that finds the area of a rectangle when given values for width and height...
def find_area (height, width)
    height*width
end
p find_area(4, 5)
# 2. Write a method named multiply_each_by_five that will loop over the given nums array below and print each number multiplied by 5
numz_arr = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]
def multiply_each_by_five arr  
    arr.each { |v| p v * 5 }
end
multiply_each_by_five(numz_arr)

######## Ruby Methods w A Hash ########
book = {
    title: 'The Great Gatsby',
    author: 'F Scott Fitzgerald',
    year: 1925,
    price: 10
}
lamp = {
    type: 'reading',
    brand: 'Ikea',
    price: 25
}
table = {
    type: 'bed side',
    brand: 'Crate & Barrel',
    color: 'birch',
    price: 50
}

# 1. Write a method named print_price that will take in any hash and return the price of the item.
def print_price(currHash)
    if currHash.has_key?(:price)
        p currHash[:price] 
    else 
        p "No price"
    end 
end
print_price(lamp)

# 2. Write a method named print_item_sums that will take in two hashes and will return the sum of the prices for the items in the hashes.
def print_item_sums hash1, hash2
    p hash1[:price] + hash2[:price]
end 
print_item_sums(book, lamp)

######## Euler Problem 1 ########
# 1. Find the sum of all the multiples of 3 or 5 below 1000.
p (0...1000).select { |n| n % 3 == 0 || n % 5 ==0 }.inject(0) { | s, n | s += n }

######## Primes  ########
# 1. Write a method called check_prime? that will test whether a number is Prime. The method will return true if Prime, false if not.
=begin 
require 'prime'
p Prime.prime?(8753) # prints true
p Prime.prime?(4) # prints false
=end 
def check_prime?(num)
    # Note: Skip 0 and 1
    (2..(num - 1)).each do |n|
        return false if num % n == 0
    end
    true
end
p check_prime?(8753) # prints true
p check_prime?(4) # prints false

# 2. Write another method called get_primes that will print all the Primes up to an arbitrary limit. For example, if you invoke your method with get_primes 100, it will print all the Prime numbers up to and including 100.
def get_primes(limit)
    # Note: ternary-operatory wouldn't work for me
    (2..limit).each do |n| 
        if check_prime?(n)
            p "#{n} is a Prime number! ✅" 
        else 
            p "#{n} is NOT a Prime number ❌" 
        end 
    end
end 

get_primes(100)

######## Two Sum ###########
# 1. Given an array of integers, return indices of two elements in the array such that their values add up to a specific target. You may assume that each input would have exactly one solution.
numz = [2, 7, 11, 15]
number = 9
def two_sums_algo_challenge (nums_arr, target)  
    callback = Proc.new do |n|
        temp = target - n
        if nums_arr.any?(temp)
            return p [nums_arr.find_index(n), nums_arr.find_index(temp)]
        else 
            p "No two indices sum to #{target}"
        end 
    end
    nums_arr.each { |n| callback.call(n) }
end

two_sums_algo_challenge(numz, number) # prints [0, 1]