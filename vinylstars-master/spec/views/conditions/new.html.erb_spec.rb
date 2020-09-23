require 'rails_helper'

RSpec.describe "conditions/new", type: :view do
  before(:each) do
    assign(:condition, Condition.new(
      :name => "MyString"
    ))
  end

  it "renders new condition form" do
    render

    assert_select "form[action=?][method=?]", conditions_path, "post" do

      assert_select "input[name=?]", "condition[name]"
    end
  end
end
