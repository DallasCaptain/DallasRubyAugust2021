require_relative 'printer_module'

class Array
    include Printer
end
class String
    include Printer
end

[1,2,4].print_each_element
'asdfasdf'.print_each_element