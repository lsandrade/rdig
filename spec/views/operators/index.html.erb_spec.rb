require 'rails_helper'

RSpec.describe "operators/index", type: :view do
  before(:each) do
    assign(:operators, [
      Operator.create!(
        :name => "Name",
        :category => "Category"
      ),
      Operator.create!(
        :name => "Name",
        :category => "Category"
      )
    ])
  end

  it "renders a list of operators" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
