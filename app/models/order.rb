class Order < ApplicationRecord
  belongs_to :user

  validates :payment_status, presence: true
  validates :payment_status, inclusion: { in: ['pagada', 'no pagada', 'pendiente de pago']}
  validates :order_status, presence: true
  validates :order_status, inclusion: { in: ['recibida', 'en preparación', 'en reparto', 'entregada']}
  validate :add_payment_date
  validate :add_delivery_date

  private

  def add_payment_date
    if payment_status == 'pagada' && payment_date.nil?
      errors.add(:payment_status, 'es pagada: debe agregar la fecha de pago')
    end
  end

  def add_delivery_date
    if order_status == 'entregada' && delivery_date.nil?
      errors.add(:order_status, 'es entregada: debe agregar la fecha de entrega')
    end
  end
end
