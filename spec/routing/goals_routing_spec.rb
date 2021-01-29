require "rails_helper"

RSpec.describe GoalsController, type: :routing do
  describe "routing" do
    context "when requesting the default response format" do
      it "does not route to #index" do
        expect(get: "characters/1/goals").to_not route_to("goals#index", character_id: "1")
      end

      it "routes to #new" do
        expect(get: "characters/1/goals/new").to route_to("goals#new", character_id: "1")
      end

      it "does not route to #show" do
        expect(get: "characters/1/goals/1").to_not route_to("goals#show", character_id: "1", id: "1")
      end

      it "routes to #edit" do
        expect(get: "characters/1/goals/1/edit").to route_to("goals#edit", character_id: "1", id: "1")
      end

      it "routes to #create" do
        expect(post: "characters/1/goals").to route_to("goals#create", character_id: "1")
      end

      it "routes to #update via PUT" do
        expect(put: "characters/1/goals/1").to route_to("goals#update", character_id: "1", id: "1")
      end

      it "routes to #update via PATCH" do
        expect(patch: "characters/1/goals/1").to route_to("goals#update", character_id: "1", id: "1")
      end

      it "routes to #destroy" do
        expect(delete: "characters/1/goals/1").to route_to("goals#destroy", character_id: "1", id: "1")
      end
    end

    context "when requesting a JSON response" do
      it "routes to #index" do
        expect(get: "characters/1/goals.json").to route_to("goals#index", character_id: "1", format: "json")
      end

      it "routes to #show" do
        expect(get: "characters/1/goals/1.json").to route_to("goals#show", character_id: "1", id: "1", format: "json")
      end
    end
  end
end
