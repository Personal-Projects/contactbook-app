class Contact < ApplicationRecord
  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
  def full_email
    last_name.downcase + first_name.downcase + email
  end
end
