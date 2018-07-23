require 'active_record'

options = {
    adapter: 'postgresql',
    database: 'solar_system'
}

ActiveRecord::Base.establish_connection( ENV['DATABASE_URL'] || options)