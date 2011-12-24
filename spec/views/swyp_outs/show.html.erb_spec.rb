require 'spec_helper'

describe "swyp_outs/show.html.erb" do
  before(:each) do
    @swyp_out = assign(:swyp_out, stub_model(SwypOut,
      :where => "Where",
      :velocity => 1,
      :address => "Address",
      :port => 1,
      :id => "Id",
      :publicKey => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Where/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
