require 'rails_helper'

RSpec.describe "goals/index.json", type: :view do
  before(:each) do
    @character = create(:character)
    assign(:goals, [
      create(:goal, character: @character),
      create(:goal, character: @character)
    ])
  end

  it "renders a list of goals" do
    render
    expect(rendered).to include("Beat the bad guys.").twice
    expect(rendered).to include("100").twice
  end
end
