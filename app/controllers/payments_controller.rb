class PaymentsController < ApplicationController
  before_action :set_order

  def new

  end

  def create
    @order = Order.find_by_id(params[:order_id])


    customers = Stripe::Customer.all
    if customers.data.empty?
      customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
      )
    else

      customer = customers.data.find { |customer| customer.email == current_user.email }

      unless customer
        customer = Stripe::Customer.create(
          source: params[:stripeToken],
          email:  params[:stripeEmail]
        )
      end

    end

    subscription = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @order.amount_cents,
    :description => 'Donation Handident',
    :currency    => 'eur'
  )
    @order.update(payment: subscription.to_json, state: 'paid')


    redirect_to order_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end


private

  def set_order
    @order = Order.where(state: 'pending').find(params[:order_id])
  end

end
