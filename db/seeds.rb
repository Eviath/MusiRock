# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Include logger
logger = Logger.new(STDOUT)
logger.info('Seeding database...')


logger.info "Creating initial user"
User.create(
  email: "admin@admin.com",
  password: "foobar"
)

logger.info "Creating initial user playlists"
User.first.playlists.create!(title: 'My first playlist')
User.first.playlists.create!(title: 'My second playlist')
User.first.playlists.create!(title: 'My third playlist')
User.first.playlists.create!(title: 'My fourth playlist')
