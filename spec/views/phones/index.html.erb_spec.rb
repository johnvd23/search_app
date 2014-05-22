require 'spec_helper'

describe "phones/index" do
  before(:each) do
    assign(:phones, [
      stub_model(Phone,
        :phone => "Phone",
        :phone_type => "Phone Type",
        :contact_id => 1
      ),
      stub_model(Phone,
        :phone => "Phone",
        :phone_type => "Phone Type",
        :contact_id => 1
      )
    ])
  end

  it "renders a list of phones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
