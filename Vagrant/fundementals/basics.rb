

# 3.times {puts 'yepp it works'}

# puts 22.odd?

# puts 9 == 9

# puts 9.9.class

x = String.new 'asdfasdf'
y = 'asdfasdf'

# puts x == y

# puts 'asfasdf'.length

# puts 'asdfasdf'[3]



# puts 'x is not y' unless x == y

# truthy
# puts 'banana is true' if 'banana'
# puts 'true' if nil # false
# i = 0
# while i<10 do 
#     i += 1

#     # i++ is not a thing
# end

# for i in ['a','b','c']
#     puts i
# end

# def name param, param2, ect
#     p "#{param} #{param2} not #{ect}"
# end

# puts name 'hi my', 'name is bob', 'carl'

# ['bob','carl','nick'].each {|name| puts "hello #{name}"}

# for name in ['bob','carl','nick']
#     puts "hello #{name}"
# end

# def greet color
#     yield 'bob'
#     puts color
#     yield 'carl'

# end

# greet ('green') { |name| puts "I am fantastic, how are you #{name}"}
# greet ('red') { |name| puts "Mornings are great, how are you #{name}"}

# puts x.object_id
# puts y.object_id
# puts x.equal?(y)

z = :asdfasdf
b = :asdfasdf
puts b.object_id
puts z.object_id
puts b.equal?(z)

user = {name: 'bob'}
puts user
puts user[:name]

user2 = {x => 'carl'}
puts user2
puts user2['asdfasdf']


