require 'rails_helper'

RSpec.describe "hooks/show", type: :view do
  before(:each) do
    @hook = assign(:hook, Hook.create!(
      :rfid => "Rfid",
      :photon => "Photon"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rfid/)
    expect(rendered).to match(/Photon/)
  end
end
