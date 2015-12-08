require 'rails_helper'

RSpec.describe "Comidas", type: :request do
  describe "GET /comidas" do
    it "works! (now write some real specs)" do
      get comidas_path
      expect(response).to have_http_status(200)
    end
  end
end
