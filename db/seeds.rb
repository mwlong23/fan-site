# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brewery.destroy_all

20.times do |index|
  brewery = Brewery.create!(name: Faker::Company.name,
                    updated_at: Faker::Date.between(20.days.ago, 2.days.ago),
                    created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, 21.days.ago))
  10.times do |index|
     style = brewery.styles.create!(style: Faker::Beer.style,
                  description: Faker::Hipster.paragraph,
                  country_of_origin: Faker::HitchhikersGuideToTheGalaxy.planet,
                  updated_at: Faker::Date.between(20.days.ago, 2.days.ago),
                  created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, 21.days.ago))

    3.times do |index|
      style.beers.create!(name: Faker::Beer.name,
                    alcohol_content: Faker::Beer.alcohol,
                    ibu: Faker::Beer.ibu,
                    blg: Faker::Beer.blg,
                    hops: Faker::Beer.hop,
                    malt: Faker::Beer.malts,
                    bio: Faker::Lorem.paragraph,
                    updated_at: Faker::Date.between(20.days.ago, 2.days.ago),
                    created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, 21.days.ago))
    end
  end
end
