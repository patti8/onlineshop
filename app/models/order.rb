class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product, optional: true

  enum status: [:pending, :process, :success]
end
