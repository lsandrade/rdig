require 'rails_helper'

RSpec.describe "segments/show", type: :view do
  before(:each) do
    @segment = assign(:segment, Segment.create!(
      :name => "Name",
      :criterium_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
