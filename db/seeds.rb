# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Categories master table
categories = {
  server: 'Server',
  kichen: 'Kichen'
}
categories.each do |category_name, name|
  Category.create!(
    name: name
  )
end

p 'Job Categories Created.'
