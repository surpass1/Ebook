require 'spec_helper'

describe "lands/show" do
  before(:each) do
    @land = assign(:land, stub_model(Land,
      :name => "Name",
      :location => "Location",
      :seller => "Seller",
      :size => "",
      :price => "",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Location/)
    rendered.should match(/Seller/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Image/)
  end
end
