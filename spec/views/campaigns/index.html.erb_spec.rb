require 'rails_helper'

RSpec.describe "campaigns/index", type: :view do
  before(:each) do
    assign(:campaigns, [
      Campaign.create!(
        :header => "Header",
        :cost => "9.99",
        :title => "Title",
        :picture1 => "Picture1",
        :picture2 => "Picture2",
        :picture1_title => "Picture1 Title",
        :picture2_title => "Picture2 Title",
        :description => "Description",
        :minimum_contribution => "9.99",
        :rfid => "Rfid",
        :owner => nil,
        :custodian => nil
      ),
      Campaign.create!(
        :header => "Header",
        :cost => "9.99",
        :title => "Title",
        :picture1 => "Picture1",
        :picture2 => "Picture2",
        :picture1_title => "Picture1 Title",
        :picture2_title => "Picture2 Title",
        :description => "Description",
        :minimum_contribution => "9.99",
        :rfid => "Rfid",
        :owner => nil,
        :custodian => nil
      )
    ])
  end

  it "renders a list of campaigns" do
    render
    assert_select "tr>td", :text => "Header".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Picture1".to_s, :count => 2
    assert_select "tr>td", :text => "Picture2".to_s, :count => 2
    assert_select "tr>td", :text => "Picture1 Title".to_s, :count => 2
    assert_select "tr>td", :text => "Picture2 Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Rfid".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
