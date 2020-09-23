require 'rails_helper'

RSpec.describe "conditions/index", type: :view do
  before(:each) do
    assign(:conditions, [
      Condition.create!(
        :name => "Name"
      ),
      Condition.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of conditions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
