require "word_builder"
require "rspec"
require "pry"

describe Word do

  describe '#initialize' do
    it"initializes the Word object & attributes, returning name" do
      test_word = Word.new({:name => "ruby", :definition => "object oriented programing language"})
      expect(test_word.name.name).to(eq("ruby"))
    end
    it"initializes the Word object & attributes, returning description" do
      test_word = Word.new({:name => "ruby", :definition => "object oriented programing language"})
      expect(test_word.definition.definition).to(eq("object oriented programing language"))
    end

  end
end
