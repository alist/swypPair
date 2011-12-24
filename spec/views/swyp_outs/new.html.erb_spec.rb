require 'spec_helper'

describe "swyp_outs/new.html.erb" do
  before(:each) do
    assign(:swyp_out, stub_model(SwypOut,
      :where => "MyString",
      :velocity => 1,
      :address => "MyString",
      :port => 1,
      :id => "MyString",
      :publicKey => ""
    ).as_new_record)
  end

  it "renders new swyp_out form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => swyp_outs_path, :method => "post" do
      assert_select "input#swyp_out_where", :name => "swyp_out[where]"
      assert_select "input#swyp_out_velocity", :name => "swyp_out[velocity]"
      assert_select "input#swyp_out_address", :name => "swyp_out[address]"
      assert_select "input#swyp_out_port", :name => "swyp_out[port]"
      assert_select "input#swyp_out_id", :name => "swyp_out[id]"
      assert_select "input#swyp_out_publicKey", :name => "swyp_out[publicKey]"
    end
  end
end
