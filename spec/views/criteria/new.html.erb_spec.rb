require 'rails_helper'

RSpec.describe "criteria/new", type: :view do
  before(:each) do
    assign(:criterium, Criterium.new(
      :name => "MyString",
      :operator_id => 1,
      :value => "MyText"
    ))
  end

  it "renders new criterium form" do
    render

    assert_select "form[action=?][method=?]", criteria_path, "post" do

      assert_select "input#criterium_name[name=?]", "criterium[name]"

      assert_select "input#criterium_operator_id[name=?]", "criterium[operator_id]"

      assert_select "textarea#criterium_value[name=?]", "criterium[value]"
    end
  end
end
