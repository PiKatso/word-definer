class Word
  @@word_array = []

  attr_accessor :name
  attr_accessor :definition

  def initialize(attribute)
    self.name = Name.new(attribute.fetch(:name))
    self.definition = Definition.new(attribute.fetch(:definition))
  end

end

class Name
  attr_accessor :name

  def initialize (word)
    self.name = word
  end
end

class Definition
  attr_accessor :definition

  def initialize(string)
    self.definition = string
  end

end
