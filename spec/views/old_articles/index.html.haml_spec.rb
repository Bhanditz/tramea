require 'rails_helper'

RSpec.describe "old_articles/index", :type => :view do
  before(:each) do
    assign(:old_articles, [
      OldArticle.create!(
        :guid => "Guid",
        :locale => 1,
        :preview => false,
        :section_id => 2,
        :title => "Title",
        :body => "MyText",
        :copyright => "Copyright",
        :license_id => 3,
        :original_url => "Original Url",
        :javascript_id => 4,
        :stylesheet_id => 5,
        :article_id => 6
      ),
      OldArticle.create!(
        :guid => "Guid",
        :locale => 1,
        :preview => false,
        :section_id => 2,
        :title => "Title",
        :body => "MyText",
        :copyright => "Copyright",
        :license_id => 3,
        :original_url => "Original Url",
        :javascript_id => 4,
        :stylesheet_id => 5,
        :article_id => 6
      )
    ])
  end

  it "renders a list of old_articles" do
    render
    assert_select "tr>td", :text => "Guid".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Copyright".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Original Url".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
