require 'rails_helper'

RSpec.describe "campaigns/new", type: :view do
  before(:each) do
    assign(:campaign, Campaign.new(
      :header => "MyString",
      :cost => "9.99",
      :title => "MyString",
      :picture1 => "MyString",
      :picture2 => "MyString",
      :picture1_title => "MyString",
      :picture2_title => "MyString",
      :description => "MyString",
      :minimum_contribution => "9.99",
      :rfid => "MyString",
      :owner => nil,
      :custodian => nil
    ))
  end

  it "renders new campaign form" do
    render

    assert_select "form[action=?][method=?]", campaigns_path, "post" do

      assert_select "input#campaign_header[name=?]", "campaign[header]"

      assert_select "input#campaign_cost[name=?]", "campaign[cost]"

      assert_select "input#campaign_title[name=?]", "campaign[title]"

      assert_select "input#campaign_picture1[name=?]", "campaign[picture1]"

      assert_select "input#campaign_picture2[name=?]", "campaign[picture2]"

      assert_select "input#campaign_picture1_title[name=?]", "campaign[picture1_title]"

      assert_select "input#campaign_picture2_title[name=?]", "campaign[picture2_title]"

      assert_select "input#campaign_description[name=?]", "campaign[description]"

      assert_select "input#campaign_minimum_contribution[name=?]", "campaign[minimum_contribution]"

      assert_select "input#campaign_rfid[name=?]", "campaign[rfid]"

      assert_select "input#campaign_owner_id[name=?]", "campaign[owner_id]"

      assert_select "input#campaign_custodian_id[name=?]", "campaign[custodian_id]"
    end
  end
end
