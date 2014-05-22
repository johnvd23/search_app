require 'spec_helper'

describe "addresses/edit" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :street => "MyString",
      :street2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :contact_id => 1
    ))
  end

  it "renders the edit address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", address_path(@address), "post" do
      assert_select "input#address_street[name=?]", "address[street]"
      assert_select "input#address_street2[name=?]", "address[street2]"
      assert_select "input#address_city[name=?]", "address[city]"
      assert_select "input#address_state[name=?]", "address[state]"
      assert_select "input#address_zip[name=?]", "address[zip]"
      assert_select "input#address_contact_id[name=?]", "address[contact_id]"
    end
  end
end
