require 'spec_helper'

describe EvaluationSession do
  before(:each) do
    FactoryGirl.create(:evaluation_session)
  end
it {should validate_presence_of(:name)}
it {should validate_presence_of(:item_type)}
end
