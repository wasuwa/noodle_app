require_relative "item"
require_relative "shop"
require_relative "user"

SHOP_NAME = "ラーメン屋 ばる"
MONEY = "3000"

items = Item.import(path: "items.csv")
shop = Shop.new(name: SHOP_NAME, items: items)
user = User.new(money: MONEY)

shop.display
user.choice
shop.sell
