require "rails_helper"

RSpec.describe ConditionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/conditions").to route_to("conditions#index")
    end

    it "routes to #new" do
      expect(:get => "/conditions/new").to route_to("conditions#new")
    end

    it "routes to #show" do
      expect(:get => "/conditions/1").to route_to("conditions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/conditions/1/edit").to route_to("conditions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/conditions").to route_to("conditions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/conditions/1").to route_to("conditions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/conditions/1").to route_to("conditions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/conditions/1").to route_to("conditions#destroy", :id => "1")
    end

  end
end
