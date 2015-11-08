require 'rails_helper'

RSpec.describe "campaigns/show", type: :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
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
      :user => nil,
      :custodian => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Header/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Picture1/)
    expect(rendered).to match(/Picture2/)
    expect(rendered).to match(/Picture1 Title/)
    expect(rendered).to match(/Picture2 Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Rfid/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
