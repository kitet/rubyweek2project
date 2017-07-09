#control class acting as parent to access the two word and definition objects
class Controller
	@@words=[]
	def initialize()
	end

	def self.newWord(newword)
		newword.id=@@words.length().+(1)
		@@words.push(newword)
	end

	def self.get_all_words()
		@@words
	end

	def self.find_by_id(identifier)
		wordtoreturn=nil
		@@words.each() do |wordobj|
			if wordobj.id.eql?(identifier)
				wordtoreturn=wordobj
			end
		end
		wordtoreturn
	end
end

#class to hold Word object
class Word
	attr_accessor(:word,:id,:definitions)
	def initialize(stringvalue) 
		@word=stringvalue
		@id=0
		@definitions=[]
	end

	def add_definition(definition)
		mydef=definition
		mydef.id=@definitions.length().+(1)
		@definitions.push(mydef)
	end

	def all_definitions()
		@definitions
	end
end

#class to hold Definition object
class Definition
	attr_accessor(:content,:id)
	def initialize(string)
		@content=string
		@id=0
	end
end
