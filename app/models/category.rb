class Category < ActiveRecord::Base
  belongs_to :post
  has_one :picture, as: :imageable
end
