require "word_builder"
require "rspec"
require "pry"

describe Word do
  before() do
    Word.clear()
  end

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

  describe "#all"
  it "displays all words in array of words, expect empty at first" do
    expect(Word.all).to(eq([]))
  end

  describe "#save"
  it "saves word to array of words" do
    test_word = Word.new({:name => "ruby", :definition => "object oriented programing language"})
    test_word.save
    expect(Word.all).to(eq([test_word]))
  end

  describe "#clear"
  it "clears word of array" do
    test_word = Word.new({:name => "ruby", :definition => "object oriented programing language"})
    test_word.save
    expect(Word.clear).to(eq([]))
  end

end
