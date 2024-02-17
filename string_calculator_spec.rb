require './spec/spec_helper'
require_relative './string_calculator.rb'

describe 'add' do
	it 'should hadle the nil argument as well' do
		expect(add).to eq("No input supplied")
	end

	it 'should add sum of provided input' do
		expect(add('1,2,3')).to eq(6)
	end

	it 'should add sum of blank string input' do
		expect(add('')).to eq(0)
	end

	it 'handle new lines between numbers (instead of commas).' do
		expect(add("1\n2")).to eq(3)
	end

	it 'handle other delimiter as well' do
		expect(add("//;1;2")).to eq(3)
	end
end
