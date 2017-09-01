require 'spec_helper'

describe "testing budget app" do

	before(:all) do
		Appium::Driver.new(desired_capabilities).start_driver
		Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
	end

	after(:all) do
		driver_quit
	end

	it 'test pry' do
		binding.pry
	end

	it "has this id" do
		find_elements(:id, "protect.budgetwatch:id/menu")

	end

	it "has an id to create and manage budgets" do
		find_elements(id: "protect.budgetwatch:id/menudesc")

	end

	it "has id for settings menu" do
		find_elements(:id, "protect.budgetwatch:id/action_settings")
	end

	it "I am able to click to add budget" do
		add_budget = find_elements(:id, "protect.budgetwatch:id/action_add")
		add_budget[0]
	end	

	it 'should input a budget name' do
		name = find_elements(:id, "protect.budgetwatch:id/budgetNameEdit")
		name[0].send_keys("name")
	end

	it "should input a value for budget" do
		find_elements(:id, "protect.budgetwatch:id/valueEdit")[0].send_keys("2000")
	end

	it "should save the created budget" do
		find_elements(:id, "protect.budgetwatch:id/action_save")[0].click
	end

	

	
end