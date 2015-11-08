require 'rails_helper'

RSpec.describe "Merchantpois", type: :request do
  describe "GET /merchantpois" do
    it "works! (now write some real specs)" do
      get merchantpois_path
      expect(response).to have_http_status(200)
    end
  end
end
