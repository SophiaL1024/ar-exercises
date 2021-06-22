require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue,numericality: { only_integer: true, greater_than:0}
  validate :must_have_men_or_women_apparel
  def must_have_men_or_women_apparel
    unless mens_apparel
      errors.add(:mens_apparel, "can't be in the past")
    end
    unless womens_apparel
      errors.add(:womens_apparel, "can't be in the past")
    end
  end
end
  
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { in: 40..200 }
  validates :store_id,presence: true
end
puts "please input a store's name"
store_name=gets.chomp
new_store=Store.create(name:store_name)
puts new_store.errors.full_messages