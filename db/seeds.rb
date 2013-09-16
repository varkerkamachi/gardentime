# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Caredifficulty.create([
  { level: 'Easiest', description: 'Anyone can take care of these.' },
  { level: 'Medium', description: 'Most people who aren\'t completely obtuse can take care of these plants.' },
  { level: 'Hardest', description: 'These plants aren\'t for everyone to take care of - nope, these require extra attention.' }
])
Fertilizer.create([
  { name: 'None', description: 'This is a description of this type of fertilizer. It tells about what soil types it helps and how. It also tells about which plants it can help the most.' },
  { name: '10-40-20', description: 'This is a description of this type of fertilizer. It tells about what soil types it helps and how. It also tells about which plants it can help the most.' },
  { name: 'Cow turd', description: 'This is a description of this type of fertilizer. It tells about what soil types it helps and how. It also tells about which plants it can help the most.' }
])
Location.create([
  { name: 'Indoors', description: 'This should be a description of what the average location of this type is like in terms of temperature, humidity and sunlight. It will say what types of things are necessary in this environment for plant care.' },
  { name: 'Outdoors', description: 'This should be a description of what the average location of this type is like in terms of temperature, humidity and sunlight. It will say what types of things are necessary in this environment for plant care.' },
  { name: 'Indoor/Outdoor', description: 'This should be a description of what the average location of this type is like in terms of temperature, humidity and sunlight. It will say what types of things are necessary in this environment for plant care.' },
  { name: 'Arid steppes', description: 'This should be a description of what the average location of this type is like in terms of temperature, humidity and sunlight. It will say what types of things are necessary in this environment for plant care.' },
  { name: 'Swampy Lowlands', description: 'This should be a description of what the average location of this type is like in terms of temperature, humidity and sunlight. It will say what types of things are necessary in this environment for plant care.' }
])
Soil.create([
  { name: 'acidic', scale: 0, description: 'This will be a description of how the soil can affect a plant. It should also describe the properties of soils - color, redness, density, water needs.' },
  { name: 'medium', scale: 1, description: 'This will be a description of how the soil can affect a plant. It should also describe the properties of soils - color, redness, density, water needs.' },
  { name: 'basic', scale: 2, description: 'This will be a description of how the soil can affect a plant. It should also describe the properties of soils - color, redness, density, water needs.' },
])
Season.create([
  { name: 'winter', description: 'This should be a description of the season and the hardships it places on plants. Can also include how-tos - how much water to give plants in winter and so forth. This should also explain the benefits to plants during a particular season.' },
  { name: 'spring', description: 'This should be a description of the season and the hardships it places on plants. Can also include how-tos - how much water to give plants in winter and so forth. This should also explain the benefits to plants during a particular season.' },
  { name: 'summer', description: 'This should be a description of the season and the hardships it places on plants. Can also include how-tos - how much water to give plants in winter and so forth. This should also explain the benefits to plants during a particular season.' },
  { name: 'fall', description: 'This should be a description of the season and the hardships it places on plants. Can also include how-tos - how much water to give plants in winter and so forth. This should also explain the benefits to plants during a particular season.' },
  { name: 'monsoon', description: 'This should be a description of the season and the hardships it places on plants. Can also include how-tos - how much water to give plants in winter and so forth. This should also explain the benefits to plants during a particular season.' }
])
PlantType.create([
  { name: 'annuals', features: 'bloom every year, often brightly colored, varieties are many, hearty species', description: 'these are the best to have'},
  { name: 'bulbs', features: 'it is the promise of a plant, can sprout, will take several weeks or months to show seedlings', description: 'They have yet to sprout or grow and you need patience to wait.'},
  { name: 'trees', features: 'tall, woody stalks', description: 'These often grow quite tall and require lots of water'},
  { name: 'shrubs', features: 'short, bushy, often thorny, hard to work with once they\'re full', description: 'These often provide excellent groundcover for snipers'},
  { name: 'vines', features: 'strong stalks, climb anything, tend to need a lot of water', description: 'These need support to get started and thereafter will grow on their host. Creepy.'}
])
Plant.create([
  { name: 'ice plant', genus: 'delosperma', description: 'This plant is a low-growth shrub that is used extensively on the roadside in southern California.', location_id: 1, season_id: 3, gallery_id: 1, geoX: '', geoY: '', caredifficulties_id: 0, plant_type_id: 3, colors: 'blue, white, maroon' },
  { name: 'japanese maple', genus: 'acer palmatum', description: 'This plant is a tree that has beautiful colors.', location_id: 2, season_id: 2, gallery_id: 2, geoX: '', geoY: '', caredifficulties_id: 1, plant_type_id: 2, colors: 'autumn orange, crimson, bright yellow' },
  { name: 'willow', genus: 'salix', description: 'This can be a tree or shrub and is found in most of the world except Australia.', location_id: 1, season_id: 4, gallery_id: 3, geoX: '', geoY: '', caredifficulties_id: 2, plant_type_id: 2, colors: 'white, green' },
  { name: 'morning glory', genus: 'ipomoea tricolor', description: 'This plant is an annual and sports pretty flowers when in bloom - grows fast.', location_id: 1, season_id: 2, gallery_id: 4, geoX: '', geoY: '', caredifficulties_id: 0, plant_type_id: 4, colors: 'blue, white, purple' },
  { name: 'butterfly bush', genus: 'buddleia lochinch', description: 'These grow easily and have blooms throughout the summer and into fall. ', location_id: 3, season_id: 2, gallery_id: 5, geoX: '', geoY: '', caredifficulties_id: 0, plant_type_id: 3, colors: 'violet, burnt orange, blue, white, reddish with orange' },
])
Care.create([
  { plant_id: 1, sun: 6, sun_frequency: 'daily', water: 2, water_frequency: 'rarely', soil_id: 0, optimum_temperature_low: 42, optimum_temperature_high: 88 },
  { plant_id: 2, sun: 4, sun_frequency: 'daily', water: 6, water_frequency: 'weekly', soil_id: 1, optimum_temperature_low: 56, optimum_temperature_high: 79 },
  { plant_id: 3, sun: 4, sun_frequency: 'daily', water: 9, water_frequency: 'daily', soil_id: 2, optimum_temperature_low: 53, optimum_temperature_high: 94 },
  { plant_id: 4, sun: 6, sun_frequency: 'daily', water: 7, water_frequency: 'daily', soil_id: 2, optimum_temperature_low: 41, optimum_temperature_high: 85 },
])
Gallery.create([
  { plant_id: 1, image1: 'ice_plant1.jpg', image2: 'ice_plant2.jpg', image3: 'ice_plant3.jpg' },
  { plant_id: 2, image1: 'japanese_maple1.jpg', image2: 'japanese_maple2.jpg', image3: 'japanese_maple3.jpg' },
  { plant_id: 3, image1: 'willow1.jpg', image2: 'willow2.jpg', image3: 'willow3.jpg' },
  { plant_id: 4, image1: 'morning_glory1.jpg', image2: 'morning_glory2.jpg', image3: 'morning_glory3.jpg' },
  { plant_id: 5, image1: 'butterfly1.jpg', image2: 'butterfly2.jpg', image3: 'butterfly3.jpg' },
])