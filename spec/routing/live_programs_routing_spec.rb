require "rails_helper"

RSpec.describe LiveProgramsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/live_programs").to route_to("live_programs#index")
    end

    it "routes to #new" do
      expect(:get => "/live_programs/new").to route_to("live_programs#new")
    end

    it "routes to #show" do
      expect(:get => "/live_programs/1").to route_to("live_programs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/live_programs/1/edit").to route_to("live_programs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/live_programs").to route_to("live_programs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/live_programs/1").to route_to("live_programs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/live_programs/1").to route_to("live_programs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/live_programs/1").to route_to("live_programs#destroy", :id => "1")
    end

  end
end
