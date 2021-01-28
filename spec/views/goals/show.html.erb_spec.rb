require 'rails_helper'

RSpec.describe "goals/show", type: :view do
  before(:each) do
    @goal = create(:goal)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Beat the bad guys./)
    expect(rendered).to match(/100/)
  end
end
