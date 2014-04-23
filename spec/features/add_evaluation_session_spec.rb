require 'spec_helper'

feature 'add an evaluation session', %Q{As a user
I want to be able to create a new evaluation session
so that I can keep the evaluation of different item types separate
} do

# I must be able to specify a name, item type, and (opionally) a description.
# When I've entered the required information and submit, I am redirected to
#  enter criteria.

scenario 'create an evaluation session' do
  session = FactoryGirl.create(:evaluation_session)
  visit new_evaluation_session_path

FactoryGirl.create(:evaluation_session, name: 'Car shopping 2014', description: 'shopping for a new car', item_type: 'car')
#expect(page).to have_content('Evaluation session created.')
  end
end
