require 'spec_helper'

describe "novels/new" do
  before(:each) do
    assign(:novel, stub_model(Novel,
      :title => "MyString",
      :context => "MyText",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new novel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", novels_path, "post" do
      assert_select "input#novel_title[name=?]", "novel[title]"
      assert_select "textarea#novel_context[name=?]", "novel[context]"
      assert_select "input#novel_author[name=?]", "novel[author]"
    end
  end
end
