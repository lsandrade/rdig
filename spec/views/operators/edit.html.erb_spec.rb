require 'rails_helper'

RSpec.describe "operators/edit", type: :view do
  before(:each) do
    @operator = assign(:operator, Operator.create!(
      :name => "MyString",
      :category => ""
    ))
  end

  it "renders the edit operator form" do
    render

    assert_select "form[action=?][method=?]", operator_path(@operator), "post" do

      assert_select "input#operator_name[name=?]", "operator[name]"

      assert_select "input#operator_category[name=?]", "operator[category]"
    end
  end
end
