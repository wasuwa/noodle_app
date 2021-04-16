require_relative "string"

class Shop
  attr_reader :items

  def initialize(name:, items:)
    @name = name
    @items = items
  end
  
  def display
    puts "ようこそ「#{@name}」へ"
    puts "当店のメニューはこちらです"
    puts "*" * 36
    @items.each.with_index(1) do |item, index|
      puts "#{index.to_s.rjust(2)}. #{item.name.mb_ljust(24)}: #{item.price.to_s.rjust(4)}円"
    end
    puts "*" * 36
  end

  def sell(user, item)
    back_money = user.money - item.price
    puts <<~EOS
      #{item.name} ですね。#{item.price}円になります
      #{user.money}円頂戴します
      お釣りは#{back_money}円です
      ゆっくり#{item.name}をお楽しみください
    EOS
  end
end
