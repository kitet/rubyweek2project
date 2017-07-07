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