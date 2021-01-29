require 'rails_helper'

RSpec.describe "goals/new", type: :view do
  before(:each) do
    @character = create(:character)
    @goal = build(:goal, character: @character)
  end

  it "renders new goal form" do
    render

    assert_select "form[action=?][method=?]", character_goals_path(@character), "post" do

      assert_select "input[name=?]", "goal[text]"

      assert_select "input[name=?]", "goal[reward]"
    end
  end
end
