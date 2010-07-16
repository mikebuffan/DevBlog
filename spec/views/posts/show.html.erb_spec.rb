require 'spec_helper'

describe "posts/show.html.erb" do
  before(:each) do
    assign(:post, @post = stub_model(Post,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
   rendered.should contain("MyString")
   rendered.should contain("MyText")
  end
end
