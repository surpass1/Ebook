require 'spec_helper'

describe "lands/index" do
  before(:each) do
    assign(:lands, [
      stub_model(Land,
        :name => "Name",
        :location => "Location",
        :seller => "Seller",
        :size => "",
        :price => "",
        :image => "Image"
      ),
      stub_model(Land,
        :name => "Name",
        :location => "Location",
        :seller => "Seller",
        :size => "",
        :price => "",
        :image => "Image"
      )
    ])
  end

  it "renders a list of lands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Seller".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
