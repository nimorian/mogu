require 'spec_helper'

describe "novels/show" do
  before(:each) do
    @novel = assign(:novel, stub_model(Novel,
      :title => "Title",
      :context => "MyText",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Author/)
  end
end
