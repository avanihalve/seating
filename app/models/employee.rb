class Employee < ApplicationRecord
	  has_one_attached :avatar
	  belongs_to :seat
      validates :office_id, presence: true
end
