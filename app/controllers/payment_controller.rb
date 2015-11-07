class PaymentController < ApplicationController
  def index
  end

  def pay

    # charge one-off token based:
    # payment = Simplify::Payment.create({
    #   amount: params['amount'].to_i*100,
    #     token: params['simplifyToken'],
    #     description: 'Simplify Rails Example',
    #     currency: 'USD'})
    #
    # @message = payment['paymentStatus']
    # puts "params", params.inspect

    # Successfully create customer id=p6B956GB:
    # customer = Simplify::Customer.create({
    #     "email" => "newestcustomer@yahoo.com",
    #     "key" =>'sbpb_ZDU4M2E5OTUtZjFmOS00YjhmLTgzNzUtOTcyOWMxMTY0N2U0',
    #     "name" => "Customer3 Customer3",
    #     "card" => {
    #        "expMonth" => "11",
    #        "expYear" => "19",
    #        "cvc" => "123",
    #        "number" => "5105105105105100"
    #     },
    #     "reference" => "customertrial"
    #   })
    #   puts "Customer", customer.inspect
    #   puts "use_id", use_id = customer['id']

    # Charge a customer based on saved data:
    customer = Simplify::Customer.find("xgnL7djp")
    puts "customer", customer

    payment = Simplify::Payment.create({
        amount: params['amount'].to_i*100,
        key: 'sbpb_ZDU4M2E5OTUtZjFmOS00YjhmLTgzNzUtOTcyOWMxMTY0N2U0',
        description: 'customer saved pay',
        customer: customer['id'],
        currency: 'USD'})
    #
    puts @message = payment['paymentStatus']
    # puts "params", params.inspect

      redirect_to payment_index_path
     end
end
#
