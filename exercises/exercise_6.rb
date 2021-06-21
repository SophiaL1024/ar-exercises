require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
has_many :employees
end

class Employee < ApplicationRecord
  belongs_to :store
end
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Brown", hourly_rate: 50)
@store1.employees.create(first_name: "Bob", last_name: "Bush", hourly_rate: 40)
@store1.employees.create(first_name: "Lisa", last_name: "Regen", hourly_rate: 80)
@store2.employees.create(first_name: "Hamilton", last_name: "Stone", hourly_rate: 70)
@store2.employees.create(first_name: "Ellen", last_name: "Lei", hourly_rate: 55)
@store2.employees.create(first_name: "Leo", last_name: "Hu", hourly_rate: 65)
@store2.employees.create(first_name: "Dominic", last_name: "Gates", hourly_rate: 80)