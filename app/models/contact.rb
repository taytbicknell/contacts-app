class Contact < ApplicationRecord

  
# In the contacts_app, when creating or updating a contact, make sure that the contact cannot be saved unless it has all these things (and if any of these things are invalid, the user will see appropriate error messages):
# ● There must be a first name
# ● There must be a last name
# ● The email must be unique
# ● Bonus: The email must be in a proper format.

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates :email, format: {
    with: URI::MailTo::EMAIL_REGEXP,
    message: 'Only valid emails allowed'
  }


  def friendly_created_at
    created_at.strftime("%A, %b %d")
  end 

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end 

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end   

  def japan_phone
    "+81 #{phone}"
  end


end
