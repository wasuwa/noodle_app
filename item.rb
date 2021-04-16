require "csv"

class Item
  def initialize(name:, price:)
    @name = name
    @price = price
  end

  def self.import(path:)
    CSV.read(path, headers: true).map do |row|
      Item.new(
        name: row["name"],
        price: row["price"].to_i
      )
    end
  end
end
