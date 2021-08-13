class User2 < ActiveRecord::Base
    validates :fname, presence: true
end
