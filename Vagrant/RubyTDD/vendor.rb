class Buyer
    attr_accessor :money

    def buy_soda
        if @money > 3
            true
        else
            false
        end
    end

    def withdraw amount
        raise MoneyError.new "You don't have enough money" if @money < amount
        @money -= amount
    end


end

class MoneyError < RuntimeError
end
