class User
  attr_reader :money

  def initialize(money:)
    @money = money
  end

  def choice(items)
    print "ラーメンを選んでください: "
    number = gets.to_i
    items[number - 1]
  end
end