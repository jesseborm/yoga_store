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

# helper methods
def print_divider
  puts "-" * 40
  puts "\n"
end

def delay(num)
  (1..num).to_a.each { print "."; sleep 0.25 }
  print "\n"
end



#
def welcome
  puts "Welcome to our beautiful store. Take your time to look around."
end

def show_products
  puts "Here is a list of our products: "
  print_divider
  @products.each do |product|
    product.each do |k, v|
      print "#{k}: #{v}, "
    end
    puts " "
  end
  print_divider
end

# Take order and store it in shopping_cart
def shopping
  print "Please type the reference_number of the product you want to purchase: "
  gets.chomp.to_i
end





def valid_prod_choice(customer_choice)
  @products.each do |product|
    if product[:reference_number] == customer_choice
      return product
    end
  end
  puts " - This not the right product - "
  continue_shopping
end

def add_to_shopping_cart(product)
  @shopping_cart << product
end

def print_shopping_cart
  delay(3)
  total_price = 0
  @shopping_cart.each do |product|
    total_price += product[:price]
    puts "Name: #{product[:name]}"
    puts "Price: #{product[:price]}"
    print_divider
    end
    puts "Shopping cart total: #{total_price} EU."
end

# if
#   @products.each |product| do
#     product.each_with_value { |key, value| }
#   end
# end



def continue_shopping
  print "Do you want to continue shopping? (Y/N) "
  answer = gets.chomp.upcase
  if answer == "Y" || answer == "YES"
    true # or call order method again directly or maybe nothing
  end
end


def check_out
  puts "Thanks for buying all that wonderfull stuff. See you again soon."
end


# running program
welcome
loop do
  show_products
  customer_choice = shopping
  add_to_shopping_cart(valid_prod_choice(customer_choice))
  print_divider
  print_shopping_cart
  break unless continue_shopping
end
print_divider
delay(5)
print_shopping_cart
check_out
