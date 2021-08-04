class User < ActiveRecord::Base
    validates :fname, :lname, :email, :age, presence: true

    has_many :blogs

    before_save :rename


    def rename
        self.lname = ''
    end
    
end
