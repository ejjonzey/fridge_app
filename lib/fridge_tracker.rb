require_relative '../config/environment'
require_relative '../app/models/fridge'

loop do
puts "Enter an option:"
puts "A) List all Fridges"
puts "B) Add a Fridge"
puts "C) Remove a fridge"
option = gets.chomp.upcase
puts "You selected #{option}"

if option.upcase == "A"
   all_fridges = Fridge.all
   all_fridges.each_with_index do |fridge|
    puts "#{fridge.location}"
  end

elsif option == "B"
    puts "where do you want this fridge"
        fridge_location = gets.chomp
        puts "What brand is this fridge?"
        fridge_brand = gets.chomp
        puts "Enter a size"
        fridge_size = gets.chomp
        puts "This fridge is in the #{fridge_location} made by #{fridge_brand} has a size of #{fridge_size}"
        Fridge.create(location: fridge_location, brand: fridge_brand, size: fridge_size)
    

elsif option == "C"
        puts "We are going to remove a fridge"
        puts "Remove which fridge?"
        remove_location = gets.chomp
        puts "removed fridge from #{remove_location}"
        Fridge.find_by(location: remove_location).delete

elsif option == "EXIT" || "QUIT"
    break
    end
end
    

