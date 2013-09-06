require 'spec_helper'

describe "lands/edit" do
  before(:each) do
    @land = assign(:land, stub_model(Land,
      :name => "MyString",
      :location => "MyString",
      :seller => "MyString",
      :size => "",
      :price => "",
      :image => "MyString"
    ))
  end

  it "renders the edit land form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", land_path(@land), "post" do
      assert_select "input#land_name[name=?]", "land[name]"
      assert_select "input#land_location[name=?]", "land[location]"
      assert_select "input#land_seller[name=?]", "land[seller]"
      assert_select "input#land_size[name=?]", "land[size]"
      assert_select "input#land_price[name=?]", "land[price]"
      assert_select "input#land_image[name=?]", "land[image]"
    end
  end
end
