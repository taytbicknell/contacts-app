json.id contact.id
json.first_name contact.first_name
json.middle_name contact.middle_name
json.last_name contact.last_name
json.phone contact.phone
json.email contact.email
json.image_url contact.image_url
json.bio contact.bio


json.formatted do 
  json.created_at contact.friendly_created_at
  json.updated_at contact.friendly_updated_at
  json.full_name contact.full_name
  json.japan_phone contact.japan_phone
end