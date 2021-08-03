class User
    attr_accessor :name, :email, :id

    def initialize(name,email)
        @name = name
        @email = email
        rand=Random.new(100000)
        @id = rand(100)
        speak
    end
    private
    def speak
        puts "Hello my name is #{self.name}"
        # puts "Its nice to meet you #{target.name}"
    end
    
end

class Admin < User
    attr_accessor :priv
    def initialize (name, email, priv)
        super name, email
        @priv = priv
    end

    def rename target, val
        target.name = val
    end 

    def talk
        speak
    end
end



class Dog
    private
    attr_accessor :name
    def initialize name
        @name = name

    end
end

d1 = Dog.new 'fido'
user1 = User.new 'bob', 'bob@bob.com'
puts user1
p user1
p user1.name
# user1.speak

admin1 = Admin.new 'carl', 'carl@bob.com', 'domain admin'
p admin1
admin1.talk

admin1.rename user1, 'charlie'
p user1