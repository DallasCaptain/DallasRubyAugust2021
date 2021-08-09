class Buyer < ActiveRecord::Base
    has_many :record_buyers

    has_many :records, through: :record_buyers

    has_many :follows

    has_many :followed_records, through: :follows, source: :record
end
