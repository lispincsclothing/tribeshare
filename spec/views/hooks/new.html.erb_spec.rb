require 'rails_helper'

RSpec.describe "hooks/new", type: :view do
  before(:each) do
    assign(:hook, Hook.new(
      :rfid => "MyString",
      :photon => "MyString"
    ))
  end

  it "renders new hook form" do
    render

    assert_select "form[action=?][method=?]", hooks_path, "post" do

      assert_select "input#hook_rfid[name=?]", "hook[rfid]"

      assert_select "input#hook_photon[name=?]", "hook[photon]"
    end
  end
end
