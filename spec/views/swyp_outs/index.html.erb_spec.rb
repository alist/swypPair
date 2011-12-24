require 'spec_helper'

describe "swyp_outs/index.html.erb" do
  before(:each) do
    assign(:swyp_outs, [
      stub_model(SwypOut,
        :where => "Where",
        :velocity => 1,
        :address => "Address",
        :port => 2,
        :id => "Id",
        :publicKey => ""
      ),
      stub_model(SwypOut,
        :where => "Where",
        :velocity => 1,
        :address => "Address",
        :port => 2,
        :id => "Id",
        :publicKey => ""
      )
    ])
  end

  it "renders a list of swyp_outs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Where".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 2.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
