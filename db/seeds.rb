# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

Image.destroy_all
CSV.foreach("#{Rails.root}/lib/assets/UTF-8/image.csv", headers: true) do |row|
     Image.create(
        :prod_id => row[0],
        :title => row[1],
        :main_cat => row[2],
        :sub_cat => row[3] ,
        :image_url => row[4],
        :price => row[5],
        :desc => row[6],
        :homepage_rank => row[7],
        :is_original => row[8],
        :is_active => row[9],
        :format_id => row[10],
        :photographer_id => row[11],
        :year_taken => row[12],
      )

end

puts "#{Image.count} photos were seeded"

Category.destroy_all
CSV.foreach("#{Rails.root}/lib/assets/UTF-8/category.csv", headers: true) do |row|
     Category.create(
        :name => row[0],
        :main_cat => row[1],
        :marketing_copy => row[2],
        :is_active => row[3] ,
        :meta_title => row[4],
        :meta_desc => row[5],
        :image_caption => row[6],
        :run_feed => row[7],
        :convert_bw_option => row[8]

      )

end
puts "#{Category.count} categories were seeded"

