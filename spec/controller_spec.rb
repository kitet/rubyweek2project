#Ruby file to execute unit testing on diffenrent logic on the controller file
#test for all the three class create in the /lib/controller file
#
require 'rspec'
require 'controller'

RSpec.describe Definition  do
	context "initializes a new Definition object" do
		it "takes one string as argument during initialization" do
			new_definition=Definition.new("nicholas means awesome")
			expect(new_definition.definition).to eq 'nicholas means awesome'
		end
		it 'creates a holder id instance varibale with value of 0' do
			new_def=Definition.new("another definition")
			expect(new_def.id).to eq 0
		end
	end
end

RSpec.describe Word do
	context 'creates a word object to hold word string and its id' do
		it 'takes string argument and create a Word Object of that string' do
			word=Word.new("My Word")
			expect(word.word).to eq 'sMy Word'
		end
		it 'creates an id property to the word with an initial value of 0' do
			word=Word.new("Another Word")
			expect(word.id).to eq 0
		end
	end
end

RSpec.describe Controller do
	context "initializes a controller class that enables easy manipulation of word and definition objects" do
		it 'enables addition of word to words array' do
			myword=Word.new("My New Word")
			Controller.new_word(myword)
			expect(Controller.get_all_words()[0]).to eq myword
		end
	end
end
