require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :firsname => "MyString",
      :lastname => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_firsname[name=?]", "user[firsname]"

      assert_select "input#user_lastname[name=?]", "user[lastname]"
    end
  end
end
