require 'spec_helper'

describe "novel_links/new" do
  before(:each) do
    assign(:novel_link, stub_model(NovelLink,
      :page => nil,
      :to_page_id => 1,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new novel_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", novel_links_path, "post" do
      assert_select "input#novel_link_page[name=?]", "novel_link[page]"
      assert_select "input#novel_link_to_page_id[name=?]", "novel_link[to_page_id]"
      assert_select "input#novel_link_name[name=?]", "novel_link[name]"
    end
  end
end
