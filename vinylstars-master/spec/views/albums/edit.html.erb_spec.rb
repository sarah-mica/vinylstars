require 'rails_helper'

RSpec.describe "albums/edit", type: :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :artist_id => 1,
      :title => "MyString",
      :year => "MyString",
      :record_condition => "MyString"
    ))
  end

  it "renders the edit album form" do
    render

    assert_select "form[action=?][method=?]", album_path(@album), "post" do

      assert_select "input[name=?]", "album[artist_id]"

      assert_select "input[name=?]", "album[title]"

      assert_select "input[name=?]", "album[year]"

      assert_select "input[name=?]", "album[record_condition]"
    end
  end
end
