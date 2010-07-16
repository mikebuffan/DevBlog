require 'spec_helper'

describe "posts/index.html.erb" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :title => "MyString",
        :body => "MyText"
      ),
      stub_model(Post,
        :title => "MyString",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of posts" do
    render
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
