require 'rails_helper'

RSpec.describe "LivePrograms", type: :request do
  describe "GET /live_programs" do
    it "works! (now write some real specs)" do
      get live_programs_path
      expect(response).to have_http_status(200)
    end
  end
end
