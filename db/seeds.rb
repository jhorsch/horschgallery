# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

Image.destroy_all
CSV.foreach("#{Rails.root}/lib/assets/photos.csv") do |row|
     Image.create!(:prod_id => row[0], :title => row[1],  :main_cat => row[2],  :sub_cat => row[3] , :image_url => row[4],:price => row[5], :desc => row[6], :is_homepage => row[7])
     puts Image.last[:prod_id]
end

puts "#{Image.count} photos were seeded"


