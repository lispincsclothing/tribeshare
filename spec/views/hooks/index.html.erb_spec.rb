require 'rails_helper'

RSpec.describe "hooks/index", type: :view do
  before(:each) do
    assign(:hooks, [
      Hook.create!(
        :rfid => "Rfid",
        :photon => "Photon"
      ),
      Hook.create!(
        :rfid => "Rfid",
        :photon => "Photon"
      )
    ])
  end

  it "renders a list of hooks" do
    render
    assert_select "tr>td", :text => "Rfid".to_s, :count => 2
    assert_select "tr>td", :text => "Photon".to_s, :count => 2
  end
end
