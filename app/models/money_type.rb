class Money < Struct.new(:amount)
  def to_s
    "#{amount / 100.0} GBP"
  end
end

class MoneyType < ActiveRecord::Type::Value
  def serialize value
    case value
    when Money
      value.amount
    when Numeric
      value
    else
      value.gsub(/\s*GBP/, "").to_f * 100
    end
  end

  def deserialize value
    Money.new value
  end
end
