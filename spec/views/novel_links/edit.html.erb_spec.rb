require 'spec_helper'

describe "novel_links/edit" do
  before(:each) do
    @novel_link = assign(:novel_link, stub_model(NovelLink,
      :page => nil,
      :to_page_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit novel_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", novel_link_path(@novel_link), "post" do
      assert_select "input#novel_link_page[name=?]", "novel_link[page]"
      assert_select "input#novel_link_to_page_id[name=?]", "novel_link[to_page_id]"
      assert_select "input#novel_link_name[name=?]", "novel_link[name]"
    end
  end
end
