@shopping_cart = []

@products = [
  { reference_number: 1231, name: "Super Lite Mat", price: 10 },
  { reference_number: 1232, name: "Power Mat", price: 20 },
  { reference_number: 1233, name: "Block", price: 30 },
  { reference_number: 1234, name: "Meditation cushion", price: 30 },
  { reference_number: 1235, name: "The best T-shirt", price: 200 },
  { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 1238, name: "Light On Yoga", price: 10 }
]


def welcome
  puts "Welcome to our store. What would you like to buy?"
end

def show_products
  puts "Here is a list of our products: "
  @products.each do |product|
    product.each do |k, v|
      print "#{k}: #{v}, "
    end
    puts " "
  end
end

# Take order and store it in shopping_cart
def shopping
  print "Please type the reference_number of the product you want to purchase: "
  p = gets.chomp.to_i
  @shopping_cart << product
=begin
  @products.each do |product|
    if product[:reference_number] == p
      @shopping_cart << product
    else
      puts "Not the right choice. please try again."
    end
  end
=end
end

#
# if
#   @products.each |product| do
#     product.each_with_value { |key, value| }
#   end
# end

def view_shopping_cart
  puts @shopping_cart
end


def continue_shopping
  print "Do you want to do some more shopping?"
  answer = gets.chomp.upcase
  if answer == "Y"
    true # or call order method again directly.
  end

end

show_products
shopping
view_shopping_cart
