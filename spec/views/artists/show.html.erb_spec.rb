require 'rails_helper'

RSpec.describe "artists/show", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :name => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
