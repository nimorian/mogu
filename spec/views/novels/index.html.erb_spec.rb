require 'spec_helper'

describe "novels/index" do
  before(:each) do
    assign(:novels, [
      stub_model(Novel,
        :title => "Title",
        :context => "MyText",
        :author => "Author"
      ),
      stub_model(Novel,
        :title => "Title",
        :context => "MyText",
        :author => "Author"
      )
    ])
  end

  it "renders a list of novels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
