require 'rails_helper'

RSpec.describe "segments/edit", type: :view do
  before(:each) do
    @segment = assign(:segment, Segment.create!(
      :name => "MyString",
      :criterium_id => 1
    ))
  end

  it "renders the edit segment form" do
    render

    assert_select "form[action=?][method=?]", segment_path(@segment), "post" do

      assert_select "input#segment_name[name=?]", "segment[name]"

      assert_select "input#segment_criterium_id[name=?]", "segment[criterium_id]"
    end
  end
end
