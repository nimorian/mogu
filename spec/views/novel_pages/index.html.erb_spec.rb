require 'spec_helper'

describe "novel_pages/index" do
  before(:each) do
    assign(:novel_pages, [
      stub_model(NovelPage,
        :novel => nil,
        :title => "Title",
        :body => "MyText",
        :status => 1
      ),
      stub_model(NovelPage,
        :novel => nil,
        :title => "Title",
        :body => "MyText",
        :status => 1
      )
    ])
  end

  it "renders a list of novel_pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
