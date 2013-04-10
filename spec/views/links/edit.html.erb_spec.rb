require 'spec_helper'

describe "links/edit" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :page_id => 1,
      :to_page_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", link_path(@link), "post" do
      assert_select "input#link_page_id[name=?]", "link[page_id]"
      assert_select "input#link_to_page_id[name=?]", "link[to_page_id]"
      assert_select "input#link_name[name=?]", "link[name]"
    end
  end
end
