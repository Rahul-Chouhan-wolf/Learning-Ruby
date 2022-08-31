# arr = [ "Every", "action" , "has" ,"Reaction"]

# puts arr;
# p arr;

#------------method with loop and conditions inside.------------------------------

# def arr 
#     for i in(0..3)
#         if(i === 3)
#           return arr = "This is a string."
#         end
#         if(i<3)
#             p arr1="This is second line"
#         end
        
#     end
# end
# p arr

# ----------------different for loops 

# the_count = [1, 2, 3, 4, 5]
# fruits = ['apples', 'oranges', 'pears', 'apricots']
# change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# for i in fruits
#     puts "We can eat #{i} or not your choice"
# end

# fruits.each do |fruit|
#     puts "We have #{fruit}"
# end

# change.each {|fr| puts "I got #{fr}"}

# element = []

# (0...4).each do |i|                              #0..4 p from 0 to 4 but 0...4 p from 0 to 3 leaves the high value
#     #element.push(i)
#     element<<i
# end

# element.each {|i| puts "Element is #{i}"}

#---------------get value--------------------

# puts "enter a value"
# val = gets.chomp!
# p "entered value is : #{val}" 

#------------------------file opening and closing-----------------------

# aFile = File.new("text2.txt","a+")
    
# aFile.close

# aFile=File.open("text2.txt","a+")
   
#     aFile.syswrite("This text was added by syswrite method from the afile in ruby.")
#     puts IO.readlines("text2.txt")

# aFile.close
#-------------------------map----------------------
# puts ["1","234","20.000032","0.99999999"].map(&:to_i)

#p ["1","234","20.000032","0.99999999"].map{ |x| [x,x.to_i] }

# p ["d","d","a","g"].map{ |x| x*3 }

# p Hash[[1,2.99,43.3,3,2].map{|x| [x,x.to_i]}]

p 