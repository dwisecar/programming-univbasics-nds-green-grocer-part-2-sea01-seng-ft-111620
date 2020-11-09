require_relative './part_1_solution.rb'
require 'pry'
def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each do | grocery_item |
    
    if grocery_item[:item] == coupons[0][:item]
      if coupons[0][:num] < grocery_item[:count]
        binding.pry
        new_item_with_coupon = {:item => "#{grocery_item[:item]}  W/COUPON", :price => (coupons[0][:cost] / coupons[0][:num]), 
          :clearance => grocery_item[:clearance],
          :count => grocery_item[:count] - coupons[0][:num]}
        cart << new_item_with_coupon
        grocery_item[:count] -= coupons[0][:num]
        
      end
      
    end
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
