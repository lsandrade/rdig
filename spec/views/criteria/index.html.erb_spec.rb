require 'rails_helper'

RSpec.describe "criteria/index", type: :view do
  before(:each) do
    assign(:criteria, [
      Criterium.create!(
        :name => "Name",
        :operator_id => 1,
        :value => "MyText"
      ),
      Criterium.create!(
        :name => "Name",
        :operator_id => 1,
        :value => "MyText"
      )
    ])
  end

  it "renders a list of criteria" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
