#### Get Started with a Few Reps Homework Section ####

# 1. Print "Hello World" to the console
# p "Hello World"

# 2. Interpolate the adjective variable into the Hellow World string using a string literal
adjective = "Big Bad"
# p "Hello #{adjective} World"

# 3. Save the string "Hello World" to a variable. Without changing the letters in your code manually, use a string method to permanently change "Hello World" to uppercased letters. Print the value of the variable you created.
hello = "Hello World" 
# p hello.upcase!


#### Nums Array and Enumerables Homework Section ####

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

# 1. Use .uniq to print the array with all duplicate entries removed
# p nums.uniq

# 2. Next, use .push and .pop , .shift .unshift and .length on the array as you would with javaScript (if you need to add a number, add 5)
p nums.push(100) # adds to end of nums-arr
p nums.pop # removes from end of nums-arr 
p nums.shift # removes from front of nums-arr 
p nums.unshift(100) # adds to beginning of nums-arr

# 3. Use .include? to check if the array contains the number 8
p nums.include? 8 # 'Predicate' method returns a boolean 