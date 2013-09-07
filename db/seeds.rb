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
  { name: 'None' },
  { name: '10-40-20' },
  { name: 'Cow turd' }
])
Location.create([
  { name: 'Indoors' },
  { name: 'Outdoors' },
  { name: 'Indoor and Outdoor' },
  { name: 'Arid steppes' },
  { name: 'Swampy Lowlands' }
])
Soil.create([
  { name: 'acidic', scale: 0 },
  { name: 'medium', scale: 1 },
  { name: 'basic', scale: 2 },
])
Season.create([
  { name: 'winter' },
  { name: 'spring' },
  { name: 'summer' },
  { name: 'fall' },
  { name: 'monsoon' }
])
PlantType.create([
  { name: 'annuals', features: 'bloom every year', description: 'these are the best to have'},
  { name: 'bulbs', features: 'it is the promise of a plant', description: 'They have yet to sprout or grow and you need patience to wait.'},
  { name: 'trees', features: 'tall, woody stalks', description: 'These often grow quite tall and require lots of water'},
  { name: 'shrubs', features: 'short and bushy', description: 'These often provide excellent groundcover for snipers'},
  { name: 'vines', features: 'strong stalks', description: 'These need support to get started and thereafter will grow on their host. Creepy.'}
])
Plant.create([
  { name: 'ice plant', genus: 'delosperma', description: 'This plant is a low-growth shrub that is used extensively on the roadside in southern California.', location_id: 1, season_id: 3, gallery_id: 1, geoX: '', geoY: '', caredifficulties_id: 0, plant_type_id: 3 },
  { name: 'japanese maple', genus: 'acer palmatum', description: 'This plant is a tree that has beautiful colors.', location_id: 2, season_id: 2, gallery_id: 2, geoX: '', geoY: '', caredifficulties_id: 1, plant_type_id: 2 },
  { name: 'willow', genus: 'salix', description: 'This can be a tree or shrub and is found in most of the world except Australia.', location_id: 1, season_id: 4, gallery_id: 3, geoX: '', geoY: '', caredifficulties_id: 2, plant_type_id: 2 },
  { name: 'morning glory', genus: 'ipomoea tricolor', description: 'This plant is an annual and sports pretty flowers when in bloom - grows fast.', location_id: 1, season_id: 2, gallery_id: 4, geoX: '', geoY: '', caredifficulties_id: 0, plant_type_id: 4 },
  { name: 'butterfly bush', genus: 'buddleia lochinch', description: 'These grow easily and have blooms throughout the summer and into fall. ', location_id: 3, season_id: 2, gallery_id: 5, geoX: '', geoY: '', caredifficulties_id: 0, plant_type_id: 3 },
])
Care.create([
  { plant_id: 1, sun: 6, sun_frequency: 'daily', water: 2, water_frequency: 'rarely', soil_id: 0, optimum_temperature_low: 42, optimum_temperature_high: 88 },
  { plant_id: 2, sun: 4, sun_frequency: 'daily', water: 6, water_frequency: 'weekly', soil_id: 1, optimum_temperature_low: 56, optimum_temperature_high: 79 },
  { plant_id: 3, sun: 4, sun_frequency: 'daily', water: 9, water_frequency: 'daily', soil_id: 2, optimum_temperature_low: 53, optimum_temperature_high: 94 },
  { plant_id: 4, sun: 6, sun_frequency: 'daily', water: 7, water_frequency: 'daily', soil_id: 2, optimum_temperature_low: 41, optimum_temperature_high: 85 },
])
Gallery.create([
  { plant_id: 0, image1: 'ice_plant1.jpg', image2: 'ice_plant2.jpg', image3: 'ice_plant3.jpg' },
  { plant_id: 2, image1: 'willow1.jpg', image2: 'willow2.jpg', image3: 'willow3.jpg' },
  { plant_id: 3, image1: 'morning_glory1.jpg', image2: 'morning_glory2.jpg', image3: 'morning_glory3.jpg' },
  { plant_id: 4, image1: 'butterfly1.jpg', image2: 'butterfly2.jpg', image3: 'butterfly3.jpg' },
])