require 'sinatra'
require 'json'
require 'faker'

locales = ['ca-CAT', 'ca', 'da-DK', 'de-AT', 'de-CH', 'de', 'en-AU', 'en-BORK', 'en-CA', 'en-GB', 'en-IND', 'en-NEP', 'en-NG', 'en-NZ', 'en-PAK', 'en-SG', 'en-UG', 'en-US', 'en-ZA', 'en-au-ocker', 'en', 'es-MX', 'es', 'fa', 'fi-FI', 'fr', 'he', 'it', 'ja', 'ko', 'nb-NO', 'nl', 'pl', 'pt-BR', 'pt', 'ru', 'sk', 'sv', 'uk', 'vi', 'zh-CN', 'zh-TW']

# executed only once, at startup
configure do

  # to prevents errors due to Rack::Protection::JsonCsrf
  disable :protection
end

# Before processing each http request
before do
  # Set the response headers
  cache_control :no_cache
  content_type 'text/plain'

  # If a locale parameter is included in the request,
  # change to that locale
  if params.key?('locale')
    locale_param = params['locale']
    if locales.include?(locale_param)
      puts "Switching to the #{locale_param.to_sym} locale"
      Faker::Config.locale = locale_param.to_sym
    end
  end
end

# After processing each http request
after do
  # Revert to the default english locale
  Faker::Config.locale = :en
end

get '/faker/locales' do
  content_type 'application/json'
  locales.to_json
end

get '/faker/name' do
  Faker::Name.name
end

get '/faker/name-with-middle' do
  Faker::Name.name_with_middle
end

get '/faker/name/firstname' do
  Faker::Name.first_name
end

get '/faker/name/lastname' do
  Faker::Name.last_name
end

get '/faker/name/prefix' do
  Faker::Name.prefix
end

get '/faker/name/suffix' do
  Faker::Name.suffix
end

get '/faker/name/title' do
  Faker::Name.title
end

get '/faker/phone-number' do
  Faker::PhoneNumber.phone_number
end

get '/faker/phone-number/cell-phone' do
  Faker::PhoneNumber.cell_phone
end

get '/faker/phone-number/area-code' do
  Faker::PhoneNumber.area_code
end

get '/faker/phone-number/exchange-code' do
  Faker::PhoneNumber.exchange_code
end

get '/faker/phone-number/subscriber' do
  Faker::PhoneNumber.subscriber_number
end

get '/faker/phone-number/extension' do
  Faker::PhoneNumber.extension
end

get '/faker/address/city' do
  Faker::Address.city
end

get '/faker/address/street-name' do
  Faker::Address.street_name
end

get '/faker/address/street-address' do
  Faker::Address.street_address
end

get '/faker/address/secondary-address' do
  Faker::Address.secondary_address
end

get '/faker/address/building-number' do
  Faker::Address.building_number
end

get '/faker/address/zip-code' do
  Faker::Address.zip_code
end

get '/faker/address/zip' do
  Faker::Address.zip
end

get '/faker/address/postcode' do
  Faker::Address.postcode
end

get '/faker/address/time-zone' do
  Faker::Address.time_zone
end

get '/faker/address/street-suffix' do
  Faker::Address.street_suffix
end

get '/faker/address/city-suffix' do
  Faker::Address.city_suffix
end

get '/faker/address/city-prefix' do
  Faker::Address.city_prefix
end

get '/faker/address/state' do
  Faker::Address.state
end

get '/faker/address/state-abbr' do
  Faker::Address.state_abbr
end

get '/faker/address/country' do
  Faker::Address.country
end

get '/faker/address/country-code' do
  Faker::Address.country_code
end

get '/faker/address/latitude' do
  Faker::Address.latitude
end

get '/faker/address/longitude' do
  Faker::Address.longitude
end

get '/faker/business/credit-card/number' do
  Faker::Business.credit_card_number
end

get '/faker/business/credit-card/expiry-date' do
  Faker::Business.credit_card_expiry_date
end

get '/faker/business/credit-card/type' do
  Faker::Business.credit_card_type
end

get '/faker/commerce/department' do
  Faker::Commerce.department
end

get '/faker/commerce/product-name' do
  Faker::Commerce.product_name
end

get '/faker/commerce/price' do
  Faker::Commerce.price
end

get '/faker/company/name' do
  Faker::Company.name
end

get '/faker/company/suffix' do
  Faker::Company.suffix
end

get '/faker/company/catch-phrase' do
  Faker::Company.catch_phrase
end

get '/faker/company/buzzword' do
  Faker::Company.buzzword
end

get '/faker/company/bs' do
  Faker::Company.bs
end

get '/faker/company/ein' do
  Faker::Company.ein
end

get '/faker/company/duns' do
  Faker::Company.duns_number
end

get '/faker/company/logo' do
  Faker::Company.logo
end

get '/faker/company/swedish-organisation-number' do
  Faker::Company.swedish_organisation_number
end

get '/faker/company/australian-business-number' do
  Faker::Company.australian_business_number
end

get '/faker/company/profession' do
  Faker::Company.profession
end

get '/faker/book/title' do
  Faker::Book.title
end

get '/faker/book/author' do
  Faker::Book.author
end

get '/faker/book/publisher' do
  Faker::Book.publisher
end

get '/faker/book/genre' do
  Faker::Book.genre
end

get '/faker/educator/university' do
  Faker::Educator.university
end

get '/faker/educator/secondary-school' do
  Faker::Educator.secondary_school
end

get '/faker/educator/course' do
  Faker::Educator.course
end

get '/faker/educator/campus' do
  Faker::Educator.campus
end

get '/faker/team/name' do
  Faker::Team.name
end

get '/faker/team/state' do
  Faker::Team.state
end

get '/faker/team/sport' do
  Faker::Team.sport
end

get '/faker/team/creature' do
  Faker::Team.creature
end

get '/faker/bitcoin/address' do
  Faker::Bitcoin.address
end

get '/faker/bitcoin/testnet-address' do
  Faker::Bitcoin.testnet_address
end

get '/faker/codes/isbn' do
  Faker::Code.isbn
end

get '/faker/codes/ean' do
  Faker::Code.ean
end

get '/faker/codes/imei' do
  Faker::Code.imei
end

get '/faker/codes/asin' do
  Faker::Code.asin
end

get '/faker/color/hex' do
  Faker::Color.hex_color
end

get '/faker/color/name' do
  Faker::Color.color_name
end

get '/faker/color/rgb' do
  Faker::Color.rgb_color.join(",")
end

get '/faker/color/hsl' do
  Faker::Color.hsl_color.join(",")
end

get '/faker/color/hsla' do
  Faker::Color.hsla_color.join(",")
end

get '/faker/internet/email' do
  Faker::Internet.email
end

get '/faker/internet/free-email' do
  Faker::Internet.free_email
end

get '/faker/internet/safe-email' do
  Faker::Internet.safe_email
end

get '/faker/internet/username' do
  Faker::Internet.user_name
end

get '/faker/internet/password' do
  Faker::Internet.password
end

get '/faker/internet/domain-name' do
  Faker::Internet.domain_name
end

get '/faker/internet/domain-suffix' do
  Faker::Internet.domain_suffix
end

get '/faker/internet/ipv4' do
  Faker::Internet.ip_v4_address
end

get '/faker/internet/ipv4/private' do
  Faker::Internet.private_ip_v4_address
end

get '/faker/internet/ipv4/public' do
  Faker::Internet.public_ip_v4_address
end

get '/faker/internet/ipv4/cdir' do
  Faker::Internet.ip_v4_cidr
end

get '/faker/internet/ipv6' do
  Faker::Internet.ip_v6_address
end

get '/faker/internet/ipv6/cdir' do
  Faker::Internet.ip_v6_cidr
end

get '/faker/internet/mac-address' do
  Faker::Internet.mac_address
end

get '/faker/internet/url' do
  Faker::Internet.url
end

get '/faker/file/name' do
  Faker::File.file_name
end

get '/faker/file/extension' do
  Faker::File.extension
end

get '/faker/file/mime-type' do
  Faker::File.mime_type
end

get '/faker/hacker/something-smart' do
  Faker::Hacker.say_something_smart
end

get '/faker/hacker/abbreviation' do
  Faker::Hacker.abbreviation
end

get '/faker/hacker/adjvective' do
  Faker::Hacker.adjective
end

get '/faker/hacker/noun' do
  Faker::Hacker.noun
end

get '/faker/hacker/verb' do
  Faker::Hacker.verb
end

get '/faker/hacker/ingverb' do
  Faker::Hacker.ingverb
end

get '/faker/crypto/md5' do
  Faker::Crypto.md5
end

get '/faker/crypto/sha1' do
  Faker::Crypto.sha1
end

get '/faker/crypto/sha256' do
  Faker::Crypto.sha256
end

get '/faker/app/name' do
  Faker::App.name
end

get '/faker/app/version' do
  Faker::App.version
end

get '/faker/app/author' do
  Faker::App.author
end

get '/faker/slack-emoji' do
  Faker::SlackEmoji.emoji
end

get '/faker/slack-emoji/people' do
  Faker::SlackEmoji.people
end

get '/faker/slack-emoji/nature' do
  Faker::SlackEmoji.nature
end

get '/faker/slack-emoji/food-and-drink' do
  Faker::SlackEmoji.food_and_drink
end

get '/faker/slack-emoji/celebration' do
  Faker::SlackEmoji.celebration
end

get '/faker/slack-emoji/activity' do
  Faker::SlackEmoji.activity
end

get '/faker/slack-emoji/travel-and-places' do
  Faker::SlackEmoji.travel_and_places
end

get '/faker/slack-emoji/objects-and-symbols' do
  Faker::SlackEmoji.objects_and_symbols
end

get '/faker/superhero/name' do
  Faker::Superhero.name
end

get '/faker/superhero/power' do
  Faker::Superhero.power
end

get '/faker/starwars/character' do
  Faker::StarWars.character
end

get '/faker/starwars/droid' do
  Faker::StarWars.droid
end

get '/faker/starwars/planet' do
  Faker::StarWars.planet
end

get '/faker/starwars/quote' do
  Faker::StarWars.quote
end

get '/faker/starwars/specie' do
  Faker::StarWars.specie
end

get '/faker/starwars/vehicle' do
  Faker::StarWars.vehicle
end

get '/faker/space/planet' do
  Faker::Space.planet
end

get '/faker/space/moon' do
  Faker::Space.moon
end

get '/faker/space/galaxy' do
  Faker::Space.galaxy
end

get '/faker/space/nebula' do
  Faker::Space.nebula
end

get '/faker/space/star-cluster' do
  Faker::Space.star_cluster
end

get '/faker/space/constellation' do
  Faker::Space.constellation
end

get '/faker/space/star' do
  Faker::Space.star
end

get '/faker/space/agency' do
  Faker::Space.agency
end

get '/faker/space/agency-abv' do
  Faker::Space.agency_abv
end

get '/faker/space/nasa-space-craft' do
  Faker::Space.nasa_space_craft
end

get '/faker/space/company' do
  Faker::Space.company
end

get '/faker/space/distance-measurement' do
  Faker::Space.distance_measurement
end

get '/faker/music/key' do
  Faker::Music.key
end

get '/faker/music/instrument' do
  Faker::Music.instrument
end

get '/faker/vehicle/vin' do
  Faker::Vehicle.vin
end

get '/faker/vehicle/manufacture' do
  Faker::Vehicle.manufacture
end

get '/faker/gameofthrones/character' do
  Faker::GameOfThrones.character
end

get '/faker/gameofthrones/house' do
  Faker::GameOfThrones.house
end

get '/faker/gameofthrones/city' do
  Faker::GameOfThrones.city
end

get '/faker/pokemon/name'  do
  Faker::Pokemon.name
end

get '/faker/pokemon/location'  do
  Faker::Pokemon.location
end

# Not yet released in the gem
# get '/faker/food/ingredient' do
#   Faker::Food.ingredient
# end
#
# get '/faker/food/spice' do
#   Faker::Food.spice
# end
#
# get '/faker/food/measurement' do
#   Faker::Food.measurement
# end

get '/faker/beer/name' do
  Faker::Beer.name
end

get '/faker/beer/style' do
  Faker::Beer.style
end

get '/faker/beer/hop' do
  Faker::Beer.hop
end

get '/faker/beer/yeast' do
  Faker::Beer.yeast
end

get '/faker/beer/malts' do
  Faker::Beer.malts
end

get '/faker/beer/ibu' do
  Faker::Beer.ibu
end

get '/faker/beer/alcohol' do
  Faker::Beer.alcohol
end

get '/faker/beer/blg' do
  Faker::Beer.blg
end

get '/faker/lorem/words' do
  Faker::Lorem.words
end

get '/faker/lorem/sentences' do
  Faker::Lorem.sentences
end

get '/faker/lorem/paragraphs' do
  Faker::Lorem.paragraphs
end

get '/faker/hipster/words' do
  Faker::Hipster.words
end

get '/faker/hipster/sentences' do
  Faker::Hipster.sentences
end

get '/faker/hipster/paragraphs' do
  Faker::Hipster.paragraphs
end
