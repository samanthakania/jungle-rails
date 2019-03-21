class UserMailer < ApplicationMailer

  def order_email(order)
    @order = order
    mail(to: @order.email, subject: 'Order #:')
  end
end
