require 'rails_helper'

RSpec.describe "goals/index", type: :view do
  before(:each) do
    assign(:goals, [
      create(:goal),
      create(:goal)
    ])
  end

  it "renders a list of goals" do
    render
    assert_select "tr>td", text: "Beat the bad guys.".to_s, count: 2
    assert_select "tr>td", text: "100".to_s, count: 2
  end
end
