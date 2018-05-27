module Users
  class DrinkLog < ApplicationRecord
    validates :user_id, presence: true
    validates :time, :volume, presence: true

    scope :drink_in, ->(start_at, end_at) { where('time >= ? AND time < ?', start_at, end_at) }
  end
end
