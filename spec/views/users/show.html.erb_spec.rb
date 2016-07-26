require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :firsname => "Firsname",
      :lastname => "Lastname"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firsname/)
    expect(rendered).to match(/Lastname/)
  end
end
