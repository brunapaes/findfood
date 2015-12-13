require 'rails_helper'

RSpec.describe "Solicitacaos", type: :request do
  describe "GET /solicitacaos" do
    it "works! (now write some real specs)" do
      get solicitacaos_path
      expect(response).to have_http_status(200)
    end
  end
end
