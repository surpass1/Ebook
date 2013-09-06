require 'spec_helper'

describe "real_estates/show" do
  before(:each) do
    @real_estate = assign(:real_estate, stub_model(RealEstate,
      :name => "Name",
      :location => "Location",
      :seller => "Seller",
      :size => "9.99",
      :price => "9.99",
      :image_path => "Image Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Location/)
    rendered.should match(/Seller/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Image Path/)
  end
end
