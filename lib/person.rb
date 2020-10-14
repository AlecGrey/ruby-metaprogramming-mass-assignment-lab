class Person

  def initialize(attr)
    attr.each do |key, value|
      self.class.attr_accessor(key)
      self.send(("#{key}="), value)
    end
  end

end

# alec_traits = {
#   name: "Alec",
#   age: 27,
#   birthdate: "11-17-1992",
#   favorite_sport: "Ultimate"
# }

# alec = Person.new(alec_traits)

# puts alec.name, alec.age, alec.birthdate, alec.favorite_sport