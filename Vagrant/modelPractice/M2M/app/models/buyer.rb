class Buyer < ActiveRecord::Base
    has_many :record_buyers

    has_many :records, through: :record_buyers
end
