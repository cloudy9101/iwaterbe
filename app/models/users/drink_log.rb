module Users
  class DrinkLog < ApplicationRecord
    validates :user, presence: true
    validates :date, :time, :volume, presence: true

    before_validation :set_date

    private

    def set_date
      self.date = datetime.to_date
    end
  end
end
