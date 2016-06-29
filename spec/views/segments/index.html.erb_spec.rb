require 'rails_helper'

RSpec.describe "segments/index", type: :view do
  before(:each) do
    assign(:segments, [
      Segment.create!(
        :name => "Name",
      ),
      Segment.create!(
        :name => "Name",
      )
    ])
  end

  it "renders a list of segments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
