require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :live_id => 1,
        :divided => false,
        :division_num => 2,
        :status => 3
      ),
      Job.create!(
        :live_id => 1,
        :divided => false,
        :division_num => 2,
        :status => 3
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
