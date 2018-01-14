class User < ApplicationRecord
  has_secure_password

  validate :email_or_mobile_presence
  validates :email, :mobile, uniqueness: true, allow_nil: true
  validates :name, presence: true

  has_many :drink_logs, class_name: 'Users::DrinkLog', dependent: :destroy

  def current_volume_number(date)
    drink_logs.where(date: date).sum(:volume)
  end

  def gender
    self[:gender] || 0
  end

  def age
    self[:age] || 0
  end

  def target_volume_number
    self[:target_volume_number] || 3000
  end

  private

  def email_or_mobile_presence
    errors.add(:base, 'email of mobile must have one') unless \
      email.present? || mobile.present?
  end
end
