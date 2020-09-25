require 'rails_helper'

RSpec.describe "albums/new", type: :view do
  before(:each) do
    assign(:album, Album.new(
      :artist_id => 1,
      :title => "MyString",
      :year => "MyString",
      :record_condition => "MyString"
    ))
  end

  it "renders new album form" do
    render

    assert_select "form[action=?][method=?]", albums_path, "post" do

      assert_select "input[name=?]", "album[artist_id]"

      assert_select "input[name=?]", "album[title]"

      assert_select "input[name=?]", "album[year]"

      assert_select "input[name=?]", "album[record_condition]"
    end
  end
end
