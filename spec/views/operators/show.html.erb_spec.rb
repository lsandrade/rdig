require 'rails_helper'

RSpec.describe "operators/show", type: :view do
  before(:each) do
    @operator = assign(:operator, Operator.create!(
      :name => "Name",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
  end
end
