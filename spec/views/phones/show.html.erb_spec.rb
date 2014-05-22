require 'spec_helper'

describe "phones/show" do
  before(:each) do
    @phone = assign(:phone, stub_model(Phone,
      :phone => "Phone",
      :phone_type => "Phone Type",
      :contact_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    rendered.should match(/Phone Type/)
    rendered.should match(/1/)
  end
end
