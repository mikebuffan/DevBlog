require 'spec_helper'

describe "posts/edit.html.erb" do
  before(:each) do
    assign(:post, @post = stub_model(Post,
      :new_record? => false,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    rendered.should have_selector("form", :action => post_path(@post), :method => "post") do |form|
      form.should have_selector("input#post_title", :name => "post[title]")
      form.should have_selector("textarea#post_body", :name => "post[body]")
    end
  end
end
