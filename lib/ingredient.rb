class Ingredient
  attr_reader :id,
              :type

  def initialize(attr_hash)
    @id = attr_hash['id']
    @type = attr_hash['type']
  end
end
