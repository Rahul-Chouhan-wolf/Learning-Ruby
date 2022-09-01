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

# (0...4).each do |i|                              #0..4 p from 0 to 4      but 0...4 p from 0 to 3 leaves the high value
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

# p Hash[%w(A string is here in this particular array).map{|i| [i,i.length]}]

# out = {:a=>"food" , :b=>"Bar" }.map{ |a,b| "#{a}=#{b}"}.join('&')

# p out

#------------------inject------------------

# arr = [ 1,2,3,4,100,1].inject(&:+)
# p arr;

# arr = [ 1,2,3,4,100,1].inject(&:*)
# p arr;

# arr = [ 20,10,2].inject(&:/)
# p arr;

# arr = [ 1,2,3,4,100,1].inject(&:-)
# p arr;

# arr = [1 ,true , "String" , false , 0.3432]
# emptyarr =[]
# unless emptyarr.empty?
#     puts arr
# end
# unless arr.empty?
#     puts arr
# end

# # -   -- - - -- - -- short version

# arr.each {|i| puts i} unless arr.empty?

#----------------OOps in ruby-----------------------------
#attr_accessor
# class ApiConnector 
#     attr_accessor :title , :desc,:url

#     def initialize(title, desc ,url)
#         @title = title
#         @desc = desc
#         @url = url
#         secret_method #private method can be run whenever we intialize 
#     end
    
#     #This is thorwing error of circular arguments,may be because of ruby version
#     # def initialize( title:title, desc:desc ,url:url) 
#     #     @title = title
#     #     @desc = desc
#     #     @url = url
#     # end
#     private
#         def secret_method
#             puts "This is a secret method inside private class."
#     end
#     def testing_initializer
#         puts @title
#         puts @desc
#         puts @url
#     end
#     #polymorphism
#     def same_name
#         puts "I am Sam Manuels from Main class"
#     end

# end

# class EmailConnector < ApiConnector
#     def show
#         puts "#{@title}@mail.com"
#     end 
#     def same_name
#         #By writing super here it will first call the parent class method
#         super
#         puts "I am Sam from Email connector."
#     end
# end

# class HttpConnector < ApiConnector
#     def show_url
#         puts @url
#     end
# end

# api = HttpConnector.new( "Mytitle", "My cool description" , "http:://google.com" )
# email = EmailConnector.new("SecondTitle","this is my second time writing","somerandomurl.com")
# email.same_name

#----------------------modules with class and exception handling--------------------------
# module SomeData 
#     module AfterSomeData
#         class << self
#             def some_data(params)
#                 data = params[:data]
#                 number = params[:number]
#                 puts "This is data : #{data}"
#                 squareAns = Square(number)
#                 puts squareAns
#                 begin
#                     divisionAns = divide(number)
#                     puts divisionAns
#                 rescue ZeroDivisionError => e
#                     puts "There is an error :#{e}" 
#                 end
#             end

#             private
#             def Square(number)
#                 number * number
#             end
#             private
#                 def divide(number)
#                     number/0
#                 end
#         end
#     end
# end
# params_data = {
#     data:"raw information without any meaning is callled data.",
#     number: 2
# }

# SomeData::AfterSomeData.some_data(params_data)

#------------------------meta programming-----------------
# class String
#     def censor(words)
#         self.gsub! "#{words}" , "Removed"
#     end
# end
# p "A rabbit dugs a hole in ground to live(also to survive).".censor("to")

# require 'ostruct'

# class Author
#     attr_accessor :first_name , :last_name , :genre

#     def Author
#         OpenStruct.new(first_name:first_name , last_name:last_name , genre:genre)
#     end

#     def method_missing(method_name, *arguments , &block)
#         if method_naem.to_s =~ /author.(.*)/
#             author.send($1,*arguments ,&block)
#         else
#             super
#         end
#     end
# end

# author = Author.new
# author.first_name="Cal"
# author.last_name="Newport"
# author.genre = "Computer engineer"

# p author.author_genre

#---------------------------------------------------Bubble sort in ruby-------------------------------------------

# arr= [23,1,34,69,12,9]

# def bubble_sort (array)
#     n=array.length

#     loop do 
#         swapped = false
#         (n-1).times do |i|
#             if array[i]> array[i+1]
#                 array[i] , array[i+1]= array[i+1] , array[i]
#                 swapped = true
#             end
#         end
#         break if not swapped
#     end
#     array
# end

# p bubble_sort(arr)

#-----------------------------Quick sort -------------------------------
class Array
    def quick_sort
        return [] if empty?
        pivot = delete_at(rand(size))
        left , right = partition(&pivot.method(:>))
        
        return [*left.quick_sort , pivot , *right.quick_sort]
    end
end

arr=[12,2,9,56,45,23,34,1,7,9,1]

p arr.quick_sort


