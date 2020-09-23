require 'rails_helper'

RSpec.describe "conditions/show", type: :view do
  before(:each) do
    @condition = assign(:condition, Condition.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
