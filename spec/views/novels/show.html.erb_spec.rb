require 'spec_helper'

describe "novels/show" do
  before(:each) do
    @novel = assign(:novel, stub_model(Novel,
      :title => "Title",
      :content => "Content",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Content/)
    rendered.should match(/Author/)
  end
end
