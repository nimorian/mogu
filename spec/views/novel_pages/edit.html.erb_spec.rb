require 'spec_helper'

describe "novel_pages/edit" do
  before(:each) do
    @novel_page = assign(:novel_page, stub_model(NovelPage,
      :novel => nil,
      :title => "MyString",
      :body => "MyText",
      :status => 1
    ))
  end

  it "renders the edit novel_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", novel_page_path(@novel_page), "post" do
      assert_select "input#novel_page_novel[name=?]", "novel_page[novel]"
      assert_select "input#novel_page_title[name=?]", "novel_page[title]"
      assert_select "textarea#novel_page_body[name=?]", "novel_page[body]"
      assert_select "input#novel_page_status[name=?]", "novel_page[status]"
    end
  end
end
