class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_groups
  has_many :groups, through: :contact_groups
  
  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
end
