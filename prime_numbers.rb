   ##By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

   ##What is the 10 001st prime number?


class Prime_numbers
  attr_accessor  :prime_number_array, :num_answer

  def initialize
    @prime_number_array = []
    @num_answer
  end   #  def initialize

  #
  ##  method determines if num / 2 has a remainder and if so passes it to second_test method
  #
  def first_test(num)
     first_test = num % 2

     if first_test == 0 then
        #puts num.inspect + " [first test] is not a prime number"
     else
      second_test(num)
     end   #   if first_test == Fixnum then

  end  #  def determine_if_prime(num)

 #
 ## method that divides num by every other number in @prime_number_array
 ## then if it is prime adds it to @prime_number_array
 #
  def second_test(num)
    #puts "now in second test method and this is num  " + num.inspect

    y = nil
    second_test = @prime_number_array.each {|x| if y == 0 then break else y = num % x end }
      #puts "this is @y " + @y.inspect
        if y == 0 then
        #puts num.inspect + " [second test]is not a prime number"
           y = nil
        else
          @prime_number_array << num
          #puts $prime_number_array.inspect
        end  #  if @y == 0 then

  end #    def second_test(num)

end   #class Prime_numbers

prime_numbers_methods = Prime_numbers.new

#
### Prompt for what prime number
#
loop do
  puts "What prime number would you like to know? (ex. 10001)"

  answer = gets.chomp!
  puts "You entered: " + answer.inspect

  if answer == "quit" then
    puts "going to exit"
    exit
  end  #if answer == quit

  prime_numbers_methods.num_answer = answer.to_f

  if prime_numbers_methods.num_answer > 0.0 and prime_numbers_methods.num_answer < 100000000000.0
    break
  end  # num_answer > 0.0

  puts "the data you entered is incorrect"

end # loop do

#
## Adds numbers 0 - input number to an array
#
   for i in 2..1000000000
     prime_numbers_methods.first_test(i)
     if prime_numbers_methods.prime_number_array.count > (prime_numbers_methods.num_answer - 2)
       break
     end

   end
#
## Determines if each of the numbers in the array are prime (passing them into the first_test method
#
      #puts  prime_numbers_methods.prime_number_array.inspect + prime_numbers_methods.prime_number_array.count.inspect

#
## displays answer to question
#

puts "this is the " + prime_numbers_methods.num_answer.to_i.inspect + " prime number = " + prime_numbers_methods.prime_number_array[prime_numbers_methods.num_answer - 2 ].inspect

    #prime_numbers_methods.determine_if_prime()


