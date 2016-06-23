require "rails_helper"

RSpec.describe CriteriaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/criteria").to route_to("criteria#index")
    end

    it "routes to #new" do
      expect(:get => "/criteria/new").to route_to("criteria#new")
    end

    it "routes to #show" do
      expect(:get => "/criteria/1").to route_to("criteria#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/criteria/1/edit").to route_to("criteria#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/criteria").to route_to("criteria#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/criteria/1").to route_to("criteria#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/criteria/1").to route_to("criteria#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/criteria/1").to route_to("criteria#destroy", :id => "1")
    end

  end
end
