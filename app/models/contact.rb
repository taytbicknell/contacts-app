class Contact < ApplicationRecord

  def friendly_created_at
    created_at.strfetime("%A, %b %d")
  end 

  def friendly_updated_at
    updated_at.strfetime("%A, %b %d")
  end 

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end   

  def japan_phone
    "+81 #{phone}"
  end  
end
