require 'rails_helper'

RSpec.describe "albums/show", type: :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :artist_id => 2,
      :title => "Title",
      :year => "Year",
      :record_condition => "Record Condition"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Record Condition/)
  end
end
