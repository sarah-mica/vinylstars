require 'rails_helper'

RSpec.describe "albums/index", type: :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :artist_id => 2,
        :title => "Title",
        :year => "Year",
        :record_condition => "Record Condition"
      ),
      Album.create!(
        :artist_id => 2,
        :title => "Title",
        :year => "Year",
        :record_condition => "Record Condition"
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Record Condition".to_s, :count => 2
  end
end
