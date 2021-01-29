require 'rails_helper'

RSpec.describe "goals/edit", type: :view do
  before(:each) do
    @goal = create(:goal)
    @character = @goal.character
  end

  it "renders the edit goal form" do
    render

    assert_select "form[action=?][method=?]", character_goal_path(@character, @goal), "post" do

      assert_select "input[name=?]", "goal[text]"

      assert_select "input[name=?]", "goal[reward]"
    end
  end
end
