# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'sqlite3'
require 'pp'

db = SQLite3::Database.open "db/test.db"
pp db
rs = db.execute "SELECT * FROM repos"
rs.each { |e|
	pp e
	Repo.create(name: e[2], language: e[3], size: e[5], fork: e[4].to_i == 1 ? 'Yes' : 'No', user_id: e[1].to_i)
}
