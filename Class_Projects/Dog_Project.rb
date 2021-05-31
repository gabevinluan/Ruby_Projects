class Dog

  # initializer
  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  # getter method - name
  def name
    @name
  end

  # getter method - breed
  def breed
    @breed
  end

  # getter method - age
  def age
    @age
  end

  # getter method - favorite method
  def favorite_foods
    @favorite_foods
  end

  # setter method - age
  def age=(new_age)
    @age = new_age
  end

  def bark
    if @age > 3
      @bark.upcase
    else @age <= 3
      @bark.downcase
    end
  end

  # return boolean whether dog's favorite food contaisn food item
  def favorite_food?(food_item)
    # use map to create a new array, where every element of the original array is downcased
    # then check if the downcased version of the argument passed is included in this new array
    @favorite_foods.map {|food|food.downcase}.include?(food_item.downcase)
  end
end

