require 'spec_helper'

describe "phones/edit" do
  before(:each) do
    @phone = assign(:phone, stub_model(Phone,
      :phone => "MyString",
      :phone_type => "MyString",
      :contact_id => 1
    ))
  end

  it "renders the edit phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", phone_path(@phone), "post" do
      assert_select "input#phone_phone[name=?]", "phone[phone]"
      assert_select "input#phone_phone_type[name=?]", "phone[phone_type]"
      assert_select "input#phone_contact_id[name=?]", "phone[contact_id]"
    end
  end
end
