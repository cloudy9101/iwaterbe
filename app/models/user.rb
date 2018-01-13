class User < ApplicationRecord
  has_secure_password

  validate :email_or_mobile_presence
  validates :name, presence: true

  has_many :drink_logs, class_name: 'Users::DrinkLog', dependent: :destroy

  def current_volume_number(date)
    drink_logs.where(date: date).sum(:volume)
  end

  private

  def email_or_mobile_presence
    email.present? || mobile.present?
  end
end
