FridgeDrink.destroy_all
FridgeFood.destroy_all
Fridge.destroy_all
Food.destroy_all
Drink.destroy_all


my_fridge = Fridge.create(location: "Kitchen", brand: "Whirlpool", size: 120)


burns_fridge = Fridge.create(location: "Kitchen", brand: "Maytag", size: 80)

my_fridge.foods = [
tempeh = Food.create(name: "tempeh", weight: 16.0, vegan: true),
chez = Food.create(name: "cheese", weight: 8.0, vegan: false),
ketchup = Food.create(name: "ketchup", weight: 12.0, vegan: true)
]

my_fridge.drinks = [
oj = Drink.create(name: "Orange Juice", alcoholic: false, size: 20.0)
]