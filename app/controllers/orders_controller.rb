class OrdersController < ApplicationController

def new

  donation = Donation.find_by_id(params["format"])
  order  = Order.create!(amount: donation.price, state: 'pending')
  redirect_to new_order_payment_path(order)


end

def create

end
end
