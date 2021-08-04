class Record < ActiveRecord::Base
    has_many :record_buyers
    has_many :buyers, through: :record_buyers
end
