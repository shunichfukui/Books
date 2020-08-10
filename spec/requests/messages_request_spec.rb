require 'rails_helper'

RSpec.describe "Messages", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/messages/new"
      expect(response).to have_http_status(:success)
    end
  end

end
