require 'rails_helper'

RSpec.describe "sources/index", :type => :view do
  before(:each) do
    assign(:sources, [
      Source.create!(
        :name => "Name",
        :full_name => "Full Name",
        :abbr => "Abbr",
        :description => "MyText",
        :private_notes => "MyText",
        :admin_notes => "MyText",
        :icon => "",
        :url => "Url",
        :small_icon_url => "Small Icon Url"
      ),
      Source.create!(
        :name => "Name",
        :full_name => "Full Name",
        :abbr => "Abbr",
        :description => "MyText",
        :private_notes => "MyText",
        :admin_notes => "MyText",
        :icon => "",
        :url => "Url",
        :small_icon_url => "Small Icon Url"
      )
    ])
  end

  it "renders a list of sources" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Abbr".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Small Icon Url".to_s, :count => 2
  end
end
