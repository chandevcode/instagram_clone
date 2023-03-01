class Like < ApplicationRecord
  include ActionView::Helpers::TextHelper

  belongs_to :user
  belongs_to :post
end
