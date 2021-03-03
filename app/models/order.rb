class Order < ApplicationRecord
  belongs_to :user

  validates :amount, presence: true
  validates :amount, numericality: true
  validates :payment_status, presence: true
  validates :payment_status, inclusion: { in: ['pagada', 'no pagada', 'pendiente de pago']}
  validates :order_status, presence: true
  validates :order_status, inclusion: { in: ['recibida', 'en preparación', 'en reparto', 'entregada']}
  validate :add_payment_date
  validate :add_delivery_date

  private

  def add_payment_date
    errors.add('Debe agregar la fecha de pago') if payment_status == 'pagada' || payment_date.nil?
  end

  def add_delivery_date
    errors.add('Debe agregar la fecha de entrega') if order_status == 'entregada' || delivery_date.nil?
  end
end
