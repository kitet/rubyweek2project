class Controller
	@@words=[]
	def initialize()
	end

	def self.new_word(word)
		word.id=@@words.length().+(1)
		@@words.push(word)
	end

	def self.get_all_words()
		@@words
	end
end
#class to hold Word object
class Word
	attr_accessor(:word,:id)
	@@definitions=[]
	def initialize(word) 
		@word=word
		@id=0
	end

	def add_definition(definition)
		mydef=Definition.new(definition)
		mydef.id=@@definitions.length().+(1)
		@@definitions.push(mydef)
	end

	def all_definitions()
		@@definitions
	end
end
#class to hold Definition object
class Definition
	attr_accessor(:definition,:id)
	def initialize(string)
		@definition=string
		@id=0
	end
end
