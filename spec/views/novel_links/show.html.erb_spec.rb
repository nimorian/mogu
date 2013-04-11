require 'spec_helper'

describe "novel_links/show" do
  before(:each) do
    @novel_link = assign(:novel_link, stub_model(NovelLink,
      :page => nil,
      :to_page_id => 1,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/Name/)
  end
end
