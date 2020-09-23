require 'rails_helper'

RSpec.describe "conditions/edit", type: :view do
  before(:each) do
    @condition = assign(:condition, Condition.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit condition form" do
    render

    assert_select "form[action=?][method=?]", condition_path(@condition), "post" do

      assert_select "input[name=?]", "condition[name]"
    end
  end
end
