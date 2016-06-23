require 'rails_helper'

RSpec.describe "operators/new", type: :view do
  before(:each) do
    assign(:operator, Operator.new(
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders new operator form" do
    render

    assert_select "form[action=?][method=?]", operators_path, "post" do

      assert_select "input#operator_name[name=?]", "operator[name]"

      assert_select "input#operator_type[name=?]", "operator[type]"
    end
  end
end
