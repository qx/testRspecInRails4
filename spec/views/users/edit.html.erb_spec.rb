require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :firsname => "MyString",
      :lastname => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_firsname[name=?]", "user[firsname]"

      assert_select "input#user_lastname[name=?]", "user[lastname]"
    end
  end
end
