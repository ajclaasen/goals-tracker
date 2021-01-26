require 'rails_helper'

RSpec.describe "goals/index", type: :view do
  before(:each) do
    assign(:goals, [
      Goal.create!(
        text: "Text",
        reward: ""
      ),
      Goal.create!(
        text: "Text",
        reward: ""
      )
    ])
  end

  it "renders a list of goals" do
    render
    assert_select "tr>td", text: "Text".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
