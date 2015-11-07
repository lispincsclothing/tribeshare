require 'rails_helper'

RSpec.describe "hooks/edit", type: :view do
  before(:each) do
    @hook = assign(:hook, Hook.create!(
      :rfid => "MyString",
      :photon => "MyString"
    ))
  end

  it "renders the edit hook form" do
    render

    assert_select "form[action=?][method=?]", hook_path(@hook), "post" do

      assert_select "input#hook_rfid[name=?]", "hook[rfid]"

      assert_select "input#hook_photon[name=?]", "hook[photon]"
    end
  end
end
