require 'rails_helper'

RSpec.describe "criteria/edit", type: :view do
  before(:each) do
    @criterium = assign(:criterium, Criterium.create!(
      :name => "MyString",
      :operator_id => 1,
      :value => "MyText"
    ))
  end

  it "renders the edit criterium form" do
    render

    assert_select "form[action=?][method=?]", criterium_path(@criterium), "post" do

      assert_select "input#criterium_name[name=?]", "criterium[name]"

      assert_select "input#criterium_operator_id[name=?]", "criterium[operator_id]"

      assert_select "textarea#criterium_value[name=?]", "criterium[value]"
    end
  end
end
