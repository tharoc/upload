# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
url = "https://raw.githubusercontent.com/tharoc/upload/master/public/spells.json"

Spell.delete_all if Rails.env.development?

spells = JSON.parse(open(url).read)

spells.each do |spell|
    Spell.create!(name: spell["name"], 
    school_list: spell["school"], 
    subschool_list: spell["subschool"],
    descriptor_list: spell["descriptor"],
    description: spell["description"])
  end