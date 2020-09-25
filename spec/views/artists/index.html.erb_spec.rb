require 'rails_helper'

RSpec.describe "artists/index", type: :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
        :name => ""
      ),
      Artist.create!(
        :name => ""
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
