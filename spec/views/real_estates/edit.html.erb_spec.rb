require 'spec_helper'

describe "real_estates/edit" do
  before(:each) do
    @real_estate = assign(:real_estate, stub_model(RealEstate,
      :name => "MyString",
      :location => "MyString",
      :seller => "MyString",
      :size => "9.99",
      :price => "9.99",
      :image_path => "MyString"
    ))
  end

  it "renders the edit real_estate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", real_estate_path(@real_estate), "post" do
      assert_select "input#real_estate_name[name=?]", "real_estate[name]"
      assert_select "input#real_estate_location[name=?]", "real_estate[location]"
      assert_select "input#real_estate_seller[name=?]", "real_estate[seller]"
      assert_select "input#real_estate_size[name=?]", "real_estate[size]"
      assert_select "input#real_estate_price[name=?]", "real_estate[price]"
      assert_select "input#real_estate_image_path[name=?]", "real_estate[image_path]"
    end
  end
end
