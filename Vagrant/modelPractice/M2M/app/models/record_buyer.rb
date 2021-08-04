class RecordBuyer < ActiveRecord::Base
  belongs_to :record
  belongs_to :buyer
end
