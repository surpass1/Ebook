require 'spec_helper'

describe "real_estates/index" do
  before(:each) do
    assign(:real_estates, [
      stub_model(RealEstate,
        :name => "Name",
        :location => "Location",
        :seller => "Seller",
        :size => "9.99",
        :price => "9.99",
        :image_path => "Image Path"
      ),
      stub_model(RealEstate,
        :name => "Name",
        :location => "Location",
        :seller => "Seller",
        :size => "9.99",
        :price => "9.99",
        :image_path => "Image Path"
      )
    ])
  end

  it "renders a list of real_estates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Seller".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Image Path".to_s, :count => 2
  end
end
