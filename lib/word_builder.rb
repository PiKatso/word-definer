class Word
  @@word_array = []

  attr_accessor :name
  attr_accessor :definition

  def initialize(attribute)
    self.name = Name.new(attribute.fetch(:name))
    self.definition = Definition.new(attribute.fetch(:definition))
  end

  def save
    @@word_array.push(self)
  end

  #class method to display list/array of Word
  def Word.all
    @@word_array
  end

  #class method to clear list/array of Word
  def Word.clear
    @@word_array = []
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
