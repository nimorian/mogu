require 'spec_helper'

describe "novels/edit" do
  before(:each) do
    @novel = assign(:novel, stub_model(Novel,
      :title => "MyString",
      :context => "MyText",
      :author => "MyString"
    ))
  end

  it "renders the edit novel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", novel_path(@novel), "post" do
      assert_select "input#novel_title[name=?]", "novel[title]"
      assert_select "textarea#novel_context[name=?]", "novel[context]"
      assert_select "input#novel_author[name=?]", "novel[author]"
    end
  end
end
