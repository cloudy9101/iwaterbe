class User < ApplicationRecord
  validate :email_or_mobile_presence
  validates :name, presence: true

  has_many :drink_logs, class_name: 'Users::DrinkLog', dependent: :destroy

  def current_volume_number
    500
  end

  def target_volume_number
    4500
  end

  private

  def email_or_mobile_presence
    email.present? || mobile.present?
  end
end
