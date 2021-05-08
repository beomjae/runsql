# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if DataSource.count == 0
  employees_datasource = DataSource.new
  employees_datasource.name = 'employees'
  employees_datasource.host = 'localhost'
  employees_datasource.username = 'employees'
  employees_datasource.password = 'employees'
  employees_datasource.port = '3306'
  employees_datasource.database = 'employees'
  employees_datasource.save
end