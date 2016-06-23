require 'rails_helper'

RSpec.describe "criteria/show", type: :view do
  before(:each) do
    @criterium = assign(:criterium, Criterium.create!(
      :name => "Name",
      :operator_id => 1,
      :value => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
