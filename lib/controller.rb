class Controller
	@@words=[]
	def initialize()
	end

	def self.new_word(word)
		@@words.push(word)
	end

	def self.get_all_words()
		@@words
	end
end

class Word
	@@definitions=[]
	def initialize(word) 
		@word=word
	end

	def add_definition(definition)
		define=Definition.new(definition)
		@id=@@definitions.length().+(1)
		@@definitions.push(define)
	end

	def all_definitions()
		@@definitions
	end
end

class Definition
	def initialize(string)
		@definition=string
	end
end
